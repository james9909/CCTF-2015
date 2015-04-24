// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            ai, ah, hg, gz

class nr
    implements Runnable
{

    final Context no;
    final hg np;
    final gz nq;
    final String nr;
    final ai ns;

    public void run()
    {
        ns.a(no, np, nq).g(nr);
    }

    (ai ai1, Context context, hg hg, gz gz, String s)
    {
        ns = ai1;
        no = context;
        np = hg;
        nq = gz;
        nr = s;
        super();
    }
}
