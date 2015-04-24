// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.content.DialogInterface;
import java.lang.ref.WeakReference;

// Referenced classes of package net.hockeyapp.android:
//            CrashManager, CrashManagerListener

static final class c
    implements android.content..OnClickListener
{

    final WeakReference a;
    final CrashManagerListener b;
    final boolean c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        CrashManager.b(a, b, c);
    }

    tener(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        a = weakreference;
        b = crashmanagerlistener;
        c = flag;
        super();
    }
}
