// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.squareup.otto.Bus;
import com.squareup.otto.ThreadEnforcer;

// Referenced classes of package com.snapchat.android.util.eventbus:
//            BusProvider

public class SnapEventBus extends Bus
{

    private static final String c = "SnapEventBus";
    protected ExceptionReporter a;
    private Handler d;

    public SnapEventBus()
    {
        super(ThreadEnforcer.a);
        SnapchatApplication.e().a(this);
    }

    private void a(Looper looper)
    {
        if (d == null)
        {
            d = new Handler(looper);
        }
    }

    public void a(Object obj)
    {
        if (SnapchatApplication.d())
        {
            super.a(obj);
            return;
        }
        Looper looper = Looper.getMainLooper();
        if (Looper.myLooper() == looper)
        {
            super.a(obj);
            return;
        } else
        {
            a(looper);
            d.post(new Runnable(obj) {

                final Object a;
                final SnapEventBus b;

                public void run()
                {
                    BusProvider.a().a(a);
                }

            
            {
                b = SnapEventBus.this;
                a = obj;
                super();
            }
            });
            return;
        }
    }

    public void b(Object obj)
    {
        try
        {
            super.b(obj);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            a.a(illegalargumentexception);
            Timber.b("SnapEventBus", (new StringBuilder()).append("Bus is being unregistered unnecessarily. ").append(illegalargumentexception).toString(), new Object[0]);
            return;
        }
    }
}
