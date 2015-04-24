// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import java.lang.ref.WeakReference;

// Referenced classes of package net.hockeyapp.android:
//            CrashManager, CrashManagerListener

static final class c extends Thread
{

    final WeakReference a;
    final CrashManagerListener b;
    final boolean c;

    public void run()
    {
        CrashManager.a(a, b);
        CrashManager.a(a, b, c);
    }

    tener(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        a = weakreference;
        b = crashmanagerlistener;
        c = flag;
        super();
    }
}
