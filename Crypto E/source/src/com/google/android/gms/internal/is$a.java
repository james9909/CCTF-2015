// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

// Referenced classes of package com.google.android.gms.internal:
//            hu, iq, ir, ij, 
//            is

static final class ET
    implements com.google.android.gms.appindexing.dexApi.ActionResult
{

    private is EQ;
    private PendingResult ER;
    private Action ES;
    private String ET;

    public PendingResult end(GoogleApiClient googleapiclient)
    {
        String s = ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName();
        long l = System.currentTimeMillis();
        ij ij1 = ir.a(ES, ET, l, s, 3);
        return EQ.a(googleapiclient, new ij[] {
            ij1
        });
    }

    public PendingResult getPendingResult()
    {
        return ER;
    }

    tion(is is1, PendingResult pendingresult, Action action, String s)
    {
        EQ = is1;
        ER = pendingresult;
        ES = action;
        ET = s;
    }
}
