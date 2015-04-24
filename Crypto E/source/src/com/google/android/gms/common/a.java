// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a
    implements ServiceConnection
{

    boolean PW;
    private final BlockingQueue PX = new LinkedBlockingQueue();

    public a()
    {
        PW = false;
    }

    public IBinder iI()
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException("BlockingServiceConnection.getService() called on main thread");
        }
        if (PW)
        {
            throw new IllegalStateException();
        } else
        {
            PW = true;
            return (IBinder)PX.take();
        }
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        PX.add(ibinder);
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }
}
