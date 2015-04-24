// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            aj, hk

class nx
    implements Runnable
{

    final aj nw;
    final String nx;

    public void run()
    {
        aj.a(nw).loadData(nx, "text/html", "UTF-8");
    }

    (aj aj1, String s)
    {
        nw = aj1;
        nx = s;
        super();
    }
}
