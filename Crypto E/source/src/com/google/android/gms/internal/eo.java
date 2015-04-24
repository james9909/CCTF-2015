// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            er, ek, et, es, 
//            eu, ew, hf, el, 
//            ab, gy, ep

public class eo extends ey.a
    implements ServiceConnection
{

    private final Activity nL;
    private eu tB;
    private Context tH;
    private ew tI;
    private ep tJ;
    private et tK;
    private String tL;
    private el ty;
    private final er tz;

    public eo(Activity activity)
    {
        tL = null;
        nL = activity;
        tz = er.k(nL.getApplicationContext());
    }

    public static void a(Context context, boolean flag, ek ek1)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", flag);
        ek.a(intent, ek1);
        context.startActivity(intent);
    }

    private void a(String s, boolean flag, int i, Intent intent)
    {
        if (tK != null)
        {
            tK.a(s, flag, i, intent, tJ);
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1001) goto _L2; else goto _L1
_L1:
        int k = es.d(intent);
        if (j != -1 || k != 0) goto _L4; else goto _L3
_L3:
        boolean flag1 = tB.a(tL, j, intent);
        boolean flag;
        flag = false;
        if (flag1)
        {
            flag = true;
        }
_L5:
        tI.recordPlayBillingResolution(k);
        nL.finish();
        a(tI.getProductId(), flag, j, intent);
        tL = null;
_L2:
        return;
_L4:
        tz.a(tJ);
        flag = false;
          goto _L5
        RemoteException remoteexception;
        remoteexception;
        hf.X("Fail to process purchase result.");
        nL.finish();
        tL = null;
        return;
        Exception exception;
        exception;
        tL = null;
        throw exception;
    }

    public void onCreate()
    {
        ek ek1 = ek.c(nL.getIntent());
        tK = ek1.tu;
        tB = ek1.lW;
        tI = ek1.ts;
        ty = new el(nL.getApplicationContext());
        tH = ek1.tt;
        Intent intent;
        if (nL.getResources().getConfiguration().orientation == 2)
        {
            nL.setRequestedOrientation(ab.aL().dF());
        } else
        {
            nL.setRequestedOrientation(ab.aL().dG());
        }
        intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        nL.bindService(intent, this, 1);
    }

    public void onDestroy()
    {
        nL.unbindService(this);
        ty.destroy();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        ty.t(ibinder);
        Bundle bundle;
        PendingIntent pendingintent;
        tL = tB.cL();
        bundle = ty.b(nL.getPackageName(), tI.getProductId(), tL);
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        if (pendingintent != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        int i = es.f(bundle);
        tI.recordPlayBillingResolution(i);
        a(tI.getProductId(), false, i, null);
        nL.finish();
        return;
        tJ = new ep(tI.getProductId(), tL);
        tz.b(tJ);
        nL.startIntentSenderForResult(pendingintent.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
        Object obj;
        obj;
_L2:
        hf.d("Error when connecting in-app billing service", ((Throwable) (obj)));
        nL.finish();
        return;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        hf.V("In-app billing service disconnected.");
        ty.destroy();
    }
}
