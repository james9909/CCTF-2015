// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

// Referenced classes of package com.flurry.sdk:
//            do, el, fb

public final class fa
{

    private static String a = com/flurry/sdk/fa.getSimpleName();

    public fa()
    {
    }

    public static File a(boolean flag)
    {
        Context context;
        File file;
label0:
        {
            context = com.flurry.sdk.do.a().b();
            file = null;
            if (!flag)
            {
                break label0;
            }
            boolean flag1 = "mounted".equals(Environment.getExternalStorageState());
            file = null;
            if (!flag1)
            {
                break label0;
            }
            if (android.os.Build.VERSION.SDK_INT < 19)
            {
                int i = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
                file = null;
                if (i != 0)
                {
                    break label0;
                }
            }
            file = context.getExternalFilesDir(null);
        }
        if (file == null)
        {
            file = context.getFilesDir();
        }
        return file;
    }

    public static void a(File file, String s)
    {
        if (file == null)
        {
            el.a(4, a, "No persistent file specified.");
            return;
        }
        if (s == null)
        {
            el.a(4, a, (new StringBuilder()).append("No data specified; deleting persistent file: ").append(file.getAbsolutePath()).toString());
            file.delete();
            return;
        }
        el.a(4, a, (new StringBuilder()).append("Writing persistent data: ").append(file.getAbsolutePath()).toString());
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(s.getBytes());
        fb.a(fileoutputstream);
        return;
        Throwable throwable;
        throwable;
        fileoutputstream = null;
_L4:
        el.a(6, a, "Error writing persistent file", throwable);
        fb.a(fileoutputstream);
        return;
        Exception exception;
        exception;
        fileoutputstream = null;
_L2:
        fb.a(fileoutputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        throwable;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(File file)
    {
        while (file == null || file.getAbsoluteFile() == null) 
        {
            return false;
        }
        File file1 = file.getParentFile();
        if (file1 == null)
        {
            return true;
        }
        if (!file1.mkdirs() && !file1.isDirectory())
        {
            el.a(6, a, (new StringBuilder()).append("Unable to create persistent dir: ").append(file1).toString());
            return false;
        } else
        {
            return true;
        }
    }

    public static File b(boolean flag)
    {
        Context context;
        File file;
label0:
        {
            context = com.flurry.sdk.do.a().b();
            file = null;
            if (!flag)
            {
                break label0;
            }
            boolean flag1 = "mounted".equals(Environment.getExternalStorageState());
            file = null;
            if (!flag1)
            {
                break label0;
            }
            if (android.os.Build.VERSION.SDK_INT < 19)
            {
                int i = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
                file = null;
                if (i != 0)
                {
                    break label0;
                }
            }
            file = context.getExternalCacheDir();
        }
        if (file == null)
        {
            file = context.getCacheDir();
        }
        return file;
    }

    public static boolean b(File file)
    {
        if (file != null && file.isDirectory())
        {
            String as[] = file.list();
            for (int i = 0; i < as.length; i++)
            {
                if (!b(new File(file, as[i])))
                {
                    return false;
                }
            }

        }
        return file.delete();
    }

    public static String c(File file)
    {
        if (file != null && file.exists()) goto _L2; else goto _L1
_L1:
        el.a(4, a, "Persistent file doesn't exist.");
_L6:
        return null;
_L2:
        el.a(4, a, (new StringBuilder()).append("Loading persistent data: ").append(file.getAbsolutePath()).toString());
        FileInputStream fileinputstream = new FileInputStream(file);
        StringBuilder stringbuilder;
        byte abyte0[];
        stringbuilder = new StringBuilder();
        abyte0 = new byte[1024];
_L5:
        int i = fileinputstream.read(abyte0);
        if (i <= 0) goto _L4; else goto _L3
_L3:
        stringbuilder.append(new String(abyte0, 0, i));
          goto _L5
        Throwable throwable;
        throwable;
_L10:
        el.a(6, a, "Error when loading persistent file", throwable);
        fb.a(fileinputstream);
        stringbuilder = null;
_L7:
        if (stringbuilder != null)
        {
            return stringbuilder.toString();
        }
          goto _L6
_L4:
        fb.a(fileinputstream);
          goto _L7
        Exception exception1;
        exception1;
        Exception exception;
        fileinputstream = null;
        exception = exception1;
_L9:
        fb.a(fileinputstream);
        throw exception;
        exception;
        if (true) goto _L9; else goto _L8
_L8:
        throwable;
        fileinputstream = null;
          goto _L10
    }

}
