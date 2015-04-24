// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.FileUtils;
import java.io.File;

public class SnapTranscodingState
{

    private final FileUtils a;
    private final Object b;
    private com.snapchat.videotranscoder.task.Task.Status c;
    private int d;
    private String e;

    public SnapTranscodingState()
    {
        this(new FileUtils());
    }

    protected SnapTranscodingState(FileUtils fileutils)
    {
        b = new Object();
        c = com.snapchat.videotranscoder.task.Task.Status.a;
        d = 5;
        a = fileutils;
    }

    public int a()
    {
        int i;
        synchronized (b)
        {
            i = 5 - d;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String a(CacheType cachetype)
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        File file;
        if (e != null && e.length() != 0)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        file = a.a(cachetype);
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        e = file.getPath();
        String s = e;
        obj;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(com.snapchat.videotranscoder.task.Task.Status status)
    {
        synchronized (b)
        {
            c = status;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(boolean flag)
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (c != com.snapchat.videotranscoder.task.Task.Status.a) goto _L2; else goto _L3
_L3:
        boolean flag1 = true;
_L8:
        if (c()) goto _L5; else goto _L4
_L4:
        boolean flag2 = false;
        if (!flag1) goto _L6; else goto _L5
_L6:
        obj;
        JVM INSTR monitorexit ;
        return flag2;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        flag2 = true;
        if (true) goto _L6; else goto _L2
_L2:
        flag1 = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public com.snapchat.videotranscoder.task.Task.Status b()
    {
        com.snapchat.videotranscoder.task.Task.Status status;
        synchronized (b)
        {
            status = c;
        }
        return status;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(com.snapchat.videotranscoder.task.Task.Status status)
    {
        synchronized (b)
        {
            d = -1 + d;
            a(status);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (c == com.snapchat.videotranscoder.task.Task.Status.d || c == com.snapchat.videotranscoder.task.Task.Status.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (d > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean e()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (c == com.snapchat.videotranscoder.task.Task.Status.c || c == com.snapchat.videotranscoder.task.Task.Status.f)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
