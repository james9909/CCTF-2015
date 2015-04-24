// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.Timber;
import com.snapchat.android.util.crypto.EncryptionAlgorithm;
import com.snapchat.android.util.network.CloseableUtils;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.apache.commons.io.FileUtils;

// Referenced classes of package com.snapchat.android.util.cache:
//            Cache, CacheType

public class ZipFileCache extends Cache
{

    public ZipFileCache(CacheType cachetype, long l)
    {
        super(cachetype, l);
    }

    private static void a(File file, byte abyte0[], int i)
    {
        ZipInputStream zipinputstream = new ZipInputStream(new ByteArrayInputStream(abyte0, 0, i));
        a(file.getAbsolutePath(), zipinputstream);
        CloseableUtils.a(zipinputstream);
        return;
        Exception exception;
        exception;
        CloseableUtils.a(zipinputstream);
        throw exception;
    }

    private static void a(String s, ZipInputStream zipinputstream, ZipEntry zipentry)
    {
        Object obj = null;
        File file;
        file = new File((new StringBuilder()).append(s).append("/").append(zipentry.getName()).toString());
        File file1 = file.getParentFile();
        if (!file1.exists() && !file1.mkdirs())
        {
            throw new IOException((new StringBuilder()).append("Could not create directory ").append(file1).toString());
        }
          goto _L1
        Exception exception;
        exception;
_L4:
        CloseableUtils.a(((java.io.Closeable) (obj)));
        throw exception;
_L1:
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        if (file.exists() && !file.delete())
        {
            throw new IOException((new StringBuilder()).append("Could not delete file ").append(file).toString());
        }
        if (!file.createNewFile())
        {
            throw new IOException((new StringBuilder()).append("Could not create new file ").append(file).toString());
        }
        abyte0 = new byte[1024];
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file), abyte0.length);
_L2:
        int i = zipinputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_232;
        }
        bufferedoutputstream.write(abyte0, 0, i);
          goto _L2
        bufferedoutputstream.flush();
        CloseableUtils.a(bufferedoutputstream);
        return;
        exception;
        obj = bufferedoutputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static boolean a(String s, ZipInputStream zipinputstream)
    {
        do
        {
            ZipEntry zipentry = zipinputstream.getNextEntry();
            if (zipentry != null)
            {
                a(s, zipinputstream, zipentry);
            } else
            {
                return true;
            }
        } while (true);
    }

    public Bitmap a(Context context, String s, EncryptionAlgorithm encryptionalgorithm)
    {
        throw new UnsupportedOperationException("Not supported by ZipFileCache");
    }

    public Bitmap a(Context context, String s, EncryptionAlgorithm encryptionalgorithm, android.graphics.Bitmap.Config config)
    {
        throw new UnsupportedOperationException("Not supported by ZipFileCache");
    }

    protected String a(byte abyte0[], int i)
    {
        File file = new File((new StringBuilder()).append(c.b()).append("/").append(c.a()).toString());
        File file1 = c.b();
        if (file1.exists() || file1.mkdirs())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        Timber.c("ZipFileCache", (new StringBuilder()).append("Failed to create directory ").append(file1.getAbsolutePath()).toString(), new Object[0]);
        return null;
        try
        {
            if (file.exists())
            {
                FileUtils.deleteDirectory(file);
            }
            file.mkdirs();
            a(file, abyte0, i);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Timber.a("ZipFileCache", filenotfoundexception);
            return null;
        }
        catch (IOException ioexception)
        {
            Timber.c("ZipFileCache", "Failed to write file...", new Object[0]);
            Timber.a("ZipFileCache", ioexception);
            return null;
        }
        return file.getAbsolutePath();
    }

    public void a(String s, Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        throw new UnsupportedOperationException("Not supported by ZipFileCache");
    }

    public void a(String s, String s1)
    {
        throw new UnsupportedOperationException("Not supported by ZipFileCache");
    }

    public byte[] a(String s)
    {
        throw new UnsupportedOperationException("Not supported by ZipFileCache");
    }
}
