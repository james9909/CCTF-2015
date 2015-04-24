// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.utils;

import android.os.Looper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

// Referenced classes of package com.snapchat.videotranscoder.utils:
//            VerboseLogging, MimeTools

public class Utils
{

    public Utils()
    {
    }

    public void a(File file, File file1)
    {
        FileChannel filechannel = null;
        FileChannel filechannel2 = (new FileInputStream(file)).getChannel();
        FileChannel filechannel3 = (new FileOutputStream(file1)).getChannel();
        filechannel3.transferFrom(filechannel2, 0L, filechannel2.size());
        if (filechannel2 != null)
        {
            filechannel2.close();
        }
        if (filechannel3 != null)
        {
            filechannel3.close();
        }
        return;
        Exception exception;
        exception;
        FileChannel filechannel1 = null;
_L2:
        if (filechannel != null)
        {
            filechannel.close();
        }
        if (filechannel1 != null)
        {
            filechannel1.close();
        }
        throw exception;
        exception;
        filechannel = filechannel2;
        filechannel1 = null;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        filechannel = filechannel2;
        filechannel1 = filechannel3;
        exception = exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a(String s)
    {
        if (Looper.myLooper() != null)
        {
            VerboseLogging.a(s, "Have own looper");
        } else
        if (Looper.getMainLooper() != null)
        {
            VerboseLogging.a(s, "Have Main looper");
        } else
        {
            VerboseLogging.a(s, "Have NO looper");
            return false;
        }
        return true;
    }

    public String b(String s)
    {
        double d = (double)(new MimeTools()).f(s) / 1048576D;
        return (new StringBuilder()).append("File: ").append(s).append(", size is ").append(d).append("MB").toString();
    }

    public void b(File file, File file1)
    {
        a(file, file1);
        file.delete();
    }
}
