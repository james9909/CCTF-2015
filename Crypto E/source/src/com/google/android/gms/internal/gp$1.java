// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            gp, fq

class xh
    implements Runnable
{

    final Thread xh;
    final gp xi;

    public void run()
    {
        fq.a(gp.a(xi), xh, gp.b(xi));
    }

    (gp gp1, Thread thread)
    {
        xi = gp1;
        xh = thread;
        super();
    }
}
