// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import android.os.Handler;

// Referenced classes of package com.facebook.rebound:
//            BaseSpringSystem, AndroidSpringLooperFactory

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (!a(a) || a.a == null)
        {
            return;
        } else
        {
            a.a.c();
            a(a).post(a(a));
            return;
        }
    }

    Q(Q q)
    {
        a = q;
        super();
    }
}
