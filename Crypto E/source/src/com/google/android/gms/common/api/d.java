// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.s;

public final class d
{
    final class a extends Handler
    {

        final d RO;

        public void handleMessage(Message message)
        {
            boolean flag = true;
            if (message.what != flag)
            {
                flag = false;
            }
            s.O(flag);
            RO.b((b)message.obj);
        }

        public a(Looper looper)
        {
            RO = d.this;
            super(looper);
        }
    }

    public static interface b
    {

        public abstract void f(Object obj);

        public abstract void iW();
    }


    private final a RN;
    private volatile Object mListener;

    d(Looper looper, Object obj)
    {
        RN = new a(looper);
        mListener = s.b(obj, "Listener must not be null");
    }

    public void a(b b1)
    {
        s.b(b1, "Notifier must not be null");
        Message message = RN.obtainMessage(1, b1);
        RN.sendMessage(message);
    }

    void b(b b1)
    {
        Object obj = mListener;
        if (obj == null)
        {
            b1.iW();
            return;
        }
        try
        {
            b1.f(obj);
            return;
        }
        catch (Exception exception)
        {
            Log.w("ListenerHolder", "Notifying listener failed", exception);
        }
        b1.iW();
    }

    public void clear()
    {
        mListener = null;
    }
}
