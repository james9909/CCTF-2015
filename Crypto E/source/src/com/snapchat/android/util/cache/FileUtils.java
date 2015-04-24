// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.snapchat.android.Timber;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Random;

// Referenced classes of package com.snapchat.android.util.cache:
//            CacheType, ExternalStorageUnavailableException

public class FileUtils
{

    public FileUtils()
    {
    }

    private File a(String s, CacheType cachetype)
    {
        File file = cachetype.b();
        if (!file.exists() && !file.mkdirs())
        {
            Timber.c("FileUtils", (new StringBuilder()).append("Failed to create directory ").append(file.getAbsolutePath()).toString(), new Object[0]);
            return null;
        } else
        {
            return new File(file, s);
        }
    }

    public static void a(Context context, File file)
    {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file));
        try
        {
            context.sendBroadcast(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void a(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            if (afile != null && afile.length > 0)
            {
                int i = afile.length;
                for (int j = 0; j < i; j++)
                {
                    a(afile[j]);
                }

            }
        }
        file.delete();
    }

    public static void a(File file, File file1)
    {
        FileChannel filechannel;
        FileChannel filechannel1;
        filechannel = (new FileInputStream(file)).getChannel();
        filechannel1 = (new FileOutputStream(file1)).getChannel();
        filechannel.transferTo(0L, filechannel.size(), filechannel1);
        if (filechannel != null)
        {
            filechannel.close();
        }
        if (filechannel1 != null)
        {
            filechannel1.close();
        }
_L2:
        return;
        IOException ioexception;
        ioexception;
        Timber.e("FileUtils", (new StringBuilder()).append("File Transfer IOException: ").append(ioexception.getMessage()).toString(), new Object[0]);
        if (filechannel != null)
        {
            filechannel.close();
        }
        if (filechannel1 == null) goto _L2; else goto _L1
_L1:
        filechannel1.close();
        return;
        Exception exception;
        exception;
        if (filechannel != null)
        {
            filechannel.close();
        }
        if (filechannel1 != null)
        {
            filechannel1.close();
        }
        throw exception;
    }

    public static boolean a(Context context, Uri uri)
    {
        boolean flag = true;
        File file = new File(uri.getPath());
        String s = (new StringBuilder()).append(c()).append(".mp4").toString();
        File file1 = new File(b(), s);
        try
        {
            a(file, file1);
        }
        catch (IOException ioexception)
        {
            Timber.a("FileUtils", ioexception);
            flag = false;
        }
        a(context, file1);
        return flag;
    }

    public static File b()
    {
        String s = Environment.getExternalStorageDirectory().toString();
        File file = new File((new StringBuilder()).append(s).append("/Snapchat").toString());
        file.mkdirs();
        return file;
    }

    public static String c()
    {
        return (new StringBuilder()).append("Snapchat-").append((new Random()).nextLong()).toString();
    }

    public long a(String s)
    {
        File file = new File(s);
        if (file != null)
        {
            return file.length();
        } else
        {
            return 0L;
        }
    }

    public File a(CacheType cachetype)
    {
        File file;
        try
        {
            file = a(a("snapchat_video_", ".mp4.nomedia"), cachetype);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.e("FileUtils", "External storage unavailable.", new Object[0]);
            return null;
        }
        return file;
    }

    public String a(String s, String s1)
    {
        if (s == null)
        {
            s = "";
        }
        if (s1 == null)
        {
            s1 = "";
        }
        return (new StringBuilder()).append(s).append((new Random()).nextLong()).append(s1).toString();
    }

    public void a(File file, byte abyte0[], int i)
    {
        FileOutputStream fileoutputstream;
        BufferedOutputStream bufferedoutputstream;
        if (i > abyte0.length)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Size (").append(i).append(") is bigger than data length (").append(abyte0.length).append(")").toString());
        }
        fileoutputstream = new FileOutputStream(file);
        bufferedoutputstream = new BufferedOutputStream(fileoutputstream);
        if (abyte0 == null || i <= 0)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        bufferedoutputstream.write(abyte0, 0, i);
        bufferedoutputstream.close();
        fileoutputstream.close();
        return;
        Exception exception;
        exception;
        bufferedoutputstream.close();
        fileoutputstream.close();
        throw exception;
    }

    public boolean a()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public File d()
    {
        File file;
        try
        {
            file = a((new StringBuilder()).append("snapchat_image_").append((new Random()).nextLong()).append(".png.nomedia").toString(), CacheType.h);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.e("FileUtils", "External storage unavailable.", new Object[0]);
            return null;
        }
        return file;
    }
}
