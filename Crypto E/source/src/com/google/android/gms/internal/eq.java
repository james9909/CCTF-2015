// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.internal:
//            es, el, hf, er, 
//            ep

public final class eq extends fa.a
    implements ServiceConnection
{

    private Context mContext;
    private String tF;
    private ep tJ;
    private boolean tP;
    private int tQ;
    private Intent tR;
    private el ty;

    public eq(Context context, String s, boolean flag, int i, Intent intent, ep ep)
    {
        tP = false;
        tF = s;
        tQ = i;
        tR = intent;
        tP = flag;
        mContext = context;
        tJ = ep;
    }

    public void finishPurchase()
    {
        int i = es.d(tR);
        if (tQ != -1 || i != 0)
        {
            return;
        } else
        {
            ty = new el(mContext);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            mContext.bindService(intent, this, 1);
            return;
        }
    }

    public String getProductId()
    {
        return tF;
    }

    public Intent getPurchaseData()
    {
        return tR;
    }

    public int getResultCode()
    {
        return tQ;
    }

    public boolean isVerified()
    {
        return tP;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        hf.V("In-app billing service connected.");
        ty.t(ibinder);
        String s = es.I(es.e(tR));
        if (s == null)
        {
            return;
        }
        if (ty.c(mContext.getPackageName(), s) == 0)
        {
            er.k(mContext).a(tJ);
        }
        mContext.unbindService(this);
        ty.destroy();
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        hf.V("In-app billing service disconnected.");
        ty.destroy();
    }
}
