// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.internal:
//            np

public static final class nL extends nL
{

    private final int TO;
    private Activity nL;

    static void a(nL nl, Activity activity)
    {
        nl.setActivity(activity);
    }

    private void setActivity(Activity activity)
    {
        nL = activity;
    }

    public void g(int i, Bundle bundle)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        PendingIntent pendingintent;
        Intent intent = new Intent();
        intent.putExtras(bundle);
        pendingintent = nL.createPendingResult(TO, intent, 0x40000000);
        if (pendingintent != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        try
        {
            pendingintent.send(1);
            return;
        }
        catch (android.app.ngIntent.CanceledException canceledexception)
        {
            Log.w("AddressClientImpl", "Exception settng pending result", canceledexception);
        }
        return;
_L2:
        PendingIntent pendingintent1 = null;
        if (bundle != null)
        {
            pendingintent1 = (PendingIntent)bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
        }
        ConnectionResult connectionresult = new ConnectionResult(i, pendingintent1);
        if (connectionresult.hasResolution())
        {
            try
            {
                connectionresult.startResolutionForResult(nL, TO);
                return;
            }
            catch (android.content.tSender.SendIntentException sendintentexception)
            {
                Log.w("AddressClientImpl", "Exception starting pending intent", sendintentexception);
            }
            return;
        }
        PendingIntent pendingintent2 = nL.createPendingResult(TO, new Intent(), 0x40000000);
        if (pendingintent2 != null)
        {
            try
            {
                pendingintent2.send(1);
                return;
            }
            catch (android.app.ngIntent.CanceledException canceledexception1)
            {
                Log.w("AddressClientImpl", "Exception setting pending result", canceledexception1);
            }
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public eption(int i, Activity activity)
    {
        TO = i;
        nL = activity;
    }
}