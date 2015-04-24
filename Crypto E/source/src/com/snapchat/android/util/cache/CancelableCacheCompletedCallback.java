// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.graphics.Bitmap;

public class CancelableCacheCompletedCallback
    implements Cache.OnCompleted
{

    private final Object a = new Object();
    private final Cache.OnCompleted b;
    private boolean c;

    public CancelableCacheCompletedCallback(Cache.OnCompleted oncompleted)
    {
        c = false;
        b = oncompleted;
    }

    public void a()
    {
        synchronized (a)
        {
            c = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Bitmap bitmap)
    {
label0:
        {
            synchronized (a)
            {
                if (!c)
                {
                    break label0;
                }
            }
            return;
        }
        b.a(bitmap);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
