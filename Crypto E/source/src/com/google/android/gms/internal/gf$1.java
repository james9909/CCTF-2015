// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            gf, ab, ay, fx, 
//            hm, hk, gh, hl, 
//            cg, hf, bm

static final class vD
    implements Runnable
{

    final Context no;
    final fx vA;
    final gh vB;
    final  vC;
    final bm vD;

    public void run()
    {
        hk hk1 = ab.aH().a(no, new ay(), false, false, null, vA.lH);
        hk1.setWillNotDraw(true);
        vB.b(hk1);
        hl hl1 = hk1.dN();
        hl1.a("/invalidRequest", vB.vI);
        hl1.a("/loadAdURL", vB.vJ);
        hl1.a("/log", cg.qn);
        hl1.a(vC);
        hf.T("Loading the JS library.");
        hk1.loadUrl(vD.bC());
    }

    (Context context, fx fx1, gh gh1,  , bm bm1)
    {
        no = context;
        vA = fx1;
        vB = gh1;
        vC = ;
        vD = bm1;
        super();
    }
}
