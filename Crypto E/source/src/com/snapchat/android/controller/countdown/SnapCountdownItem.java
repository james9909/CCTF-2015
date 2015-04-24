// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;

import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.system.Clock;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.controller.countdown:
//            SnapCountdownListener

class SnapCountdownItem
{

    private final Object a;
    private final Clock b;
    private final Set c;
    private final ReceivedSnap d;
    private final boolean e;
    private long f;

    public SnapCountdownItem(ReceivedSnap receivedsnap, boolean flag)
    {
        this(new Clock(), receivedsnap, flag);
    }

    SnapCountdownItem(Clock clock, ReceivedSnap receivedsnap, boolean flag)
    {
        a = new Object();
        c = new LinkedHashSet();
        f = 0x7fffffffffffffffL;
        b = clock;
        d = receivedsnap;
        e = flag;
    }

    public SnapCountdownItem a(ReceivedSnap receivedsnap)
    {
        SnapCountdownItem snapcountdownitem = new SnapCountdownItem(receivedsnap, b());
        for (Iterator iterator = f().iterator(); iterator.hasNext(); snapcountdownitem.a((SnapCountdownListener)iterator.next())) { }
        if (e())
        {
            snapcountdownitem.a(d());
        }
        return snapcountdownitem;
    }

    public ReceivedSnap a()
    {
        return d;
    }

    public void a(long l)
    {
        f = l + b.b();
    }

    public void a(SnapCountdownListener snapcountdownlistener)
    {
        synchronized (a)
        {
            c.add(snapcountdownlistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(SnapCountdownListener snapcountdownlistener)
    {
        synchronized (a)
        {
            c.remove(snapcountdownlistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b()
    {
        return e;
    }

    public int c()
    {
        return (int)Math.ceil((double)d() / 1000D);
    }

    public long d()
    {
        if (!e())
        {
            throw new IllegalStateException("Countdown not yet started for this snap.");
        } else
        {
            long l = b.b();
            return Math.max(0L, f - l);
        }
    }

    public boolean e()
    {
        return f != 0x7fffffffffffffffL;
    }

    public Set f()
    {
        LinkedHashSet linkedhashset = new LinkedHashSet();
        synchronized (a)
        {
            linkedhashset.addAll(c);
        }
        return linkedhashset;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void g()
    {
        synchronized (a)
        {
            c.clear();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String toString()
    {
        return d.d();
    }
}
