// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.crittercism.app;

import android.content.Context;
import android.content.res.AssetManager;
import crittercism.android.dg;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class CrittercismNDK
{

    private static boolean a = false;

    public CrittercismNDK()
    {
    }

    public static void a(Context context, String s)
    {
        boolean flag = true;
        String s1 = (new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("/").append(s).toString();
        if (b(context))
        {
            flag = a(context);
        } else
        {
            try
            {
                System.loadLibrary("crittercism-v3");
            }
            catch (Throwable throwable)
            {
                flag = false;
            }
        }
        if (!flag)
        {
            return;
        }
        try
        {
            if (installNdk(s1))
            {
                (new File(s1)).mkdirs();
                a = true;
                return;
            }
        }
        catch (Throwable throwable1)
        {
            return;
        }
        dg.c("Crittercism", "Unable to initialize NDK crash reporting.");
        return;
    }

    public static boolean a(Context context)
    {
        File file = new File(context.getFilesDir(), "/com.crittercism/lib/");
        File file1 = new File(file, "libcrittercism-v3.so");
        File file2 = new File(file, "libcrittercism-ndk.so");
        if (!file1.exists())
        {
            if (!a(context, file1))
            {
                file1.delete();
                return false;
            }
            file2.delete();
        }
        try
        {
            System.load(file1.getAbsolutePath());
        }
        catch (Throwable throwable)
        {
            dg.a("Crittercism", "Unable to install NDK library", throwable);
            file1.delete();
            return false;
        }
        return true;
    }

    public static boolean a(Context context, File file)
    {
        dg.b();
        FileOutputStream fileoutputstream;
        InputStream inputstream;
        byte abyte0[];
        file.getParentFile().mkdirs();
        fileoutputstream = new FileOutputStream(file);
        inputstream = c(context);
        abyte0 = new byte[8192];
_L1:
        int i = inputstream.read(abyte0);
label0:
        {
            if (i < 0)
            {
                break label0;
            }
            try
            {
                fileoutputstream.write(abyte0, 0, i);
            }
            catch (Exception exception)
            {
                dg.b("Crittercism", (new StringBuilder("Could not install breakpad library: ")).append(exception.toString()).toString());
                return false;
            }
        }
          goto _L1
        inputstream.close();
        fileoutputstream.close();
        return true;
    }

    public static boolean b(Context context)
    {
        try
        {
            c(context);
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return true;
    }

    public static InputStream c(Context context)
    {
        String s = "armeabi";
        if (System.getProperty("os.arch").contains("v7"))
        {
            s = (new StringBuilder()).append(s).append("-v7a").toString();
        }
        return context.getAssets().open((new StringBuilder()).append(s).append("/libcrittercism-v3.so").toString());
    }

    public static native boolean installNdk(String s);

}
