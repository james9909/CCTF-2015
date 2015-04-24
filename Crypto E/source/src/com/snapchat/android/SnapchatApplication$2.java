// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            SnapchatApplication

class a
    implements onHandler
{

    final onHandler a;
    final SnapchatApplication b;

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        Iterator iterator = SnapchatApplication.b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ashable ashable = (ashable)((WeakReference)iterator.next()).get();
            if (ashable != null)
            {
                ashable.a(b, thread, throwable);
            }
        } while (true);
        a.uncaughtException(thread, throwable);
    }

    ashable(SnapchatApplication snapchatapplication, onHandler onhandler)
    {
        b = snapchatapplication;
        a = onhandler;
        super();
    }
}
