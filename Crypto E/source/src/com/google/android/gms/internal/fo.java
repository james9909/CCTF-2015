// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;

// Referenced classes of package com.google.android.gms.internal:
//            fk, cu, da, fx, 
//            fz, gn, dd, cw, 
//            hk

public class fo extends fk
{

    private dd lt;
    private cw qJ;
    private cu ut;
    private da uu;

    fo(Context context, gn.a a, hk hk, dd dd, fl.a a1)
    {
        super(context, a, hk, a1);
        lt = dd;
        qJ = a.wD;
    }

    protected void f(long l)
    {
        synchronized (ul)
        {
            ut = new cu(mContext, um.wI, lt, qJ);
        }
        uu = ut.a(l, 60000L);
        switch (uu.ro)
        {
        default:
            throw new fk.a((new StringBuilder()).append("Unexpected mediation result: ").append(uu.ro).toString(), 0);

        case 1: // '\001'
            throw new fk.a("No fill from any mediation ad networks.", 3);

        case 0: // '\0'
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onStop()
    {
        synchronized (ul)
        {
            super.onStop();
            if (ut != null)
            {
                ut.cancel();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected gn q(int i)
    {
        fx fx1 = um.wI;
        av av = fx1.uK;
        hk hk = mj;
        java.util.List list = un.qX;
        java.util.List list1 = un.qY;
        java.util.List list2 = un.vb;
        int j = un.orientation;
        long l = un.rb;
        String s = fx1.uN;
        boolean flag = un.uZ;
        cv cv;
        de de;
        String s1;
        cw cw;
        cy cy;
        if (uu != null)
        {
            cv = uu.rp;
        } else
        {
            cv = null;
        }
        if (uu != null)
        {
            de = uu.rq;
        } else
        {
            de = null;
        }
        if (uu != null)
        {
            s1 = uu.rr;
        } else
        {
            s1 = com/google/ads/mediation/admob/AdMobAdapter.getName();
        }
        cw = qJ;
        if (uu != null)
        {
            cy = uu.rs;
        } else
        {
            cy = null;
        }
        return new gn(av, hk, list, i, list1, list2, j, l, s, flag, cv, de, s1, cw, cy, un.va, um.lL, un.uY, um.wF, un.vd, un.ve, um.wC, null);
    }
}
