// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            em, ep, eu, eq, 
//            fb, hf

class tD
    implements Runnable
{

    final ep tC;
    final Intent tD;
    final em tE;

    public void run()
    {
        if (em.a(tE).a(tC.tN, -1, tD))
        {
            em.c(tE).a(new eq(em.b(tE), tC.tO, true, -1, tD, tC));
            return;
        }
        try
        {
            em.c(tE).a(new eq(em.b(tE), tC.tO, false, -1, tD, tC));
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.X("Fail to verify and dispatch pending transaction");
        }
        return;
    }

    (em em1, ep ep1, Intent intent)
    {
        tE = em1;
        tC = ep1;
        tD = intent;
        super();
    }
}
