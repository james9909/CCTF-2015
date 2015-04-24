// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import android.view.Choreographer;

// Referenced classes of package com.facebook.rebound:
//            BaseSpringSystem, AndroidSpringLooperFactory

class a
    implements android.view.ooper._cls1
{

    final a a;

    public void doFrame(long l)
    {
        if (!a(a) || a.a == null)
        {
            return;
        } else
        {
            a.a.c();
            a(a).postFrameCallback(a(a));
            return;
        }
    }

    ( )
    {
        a = ;
        super();
    }
}
