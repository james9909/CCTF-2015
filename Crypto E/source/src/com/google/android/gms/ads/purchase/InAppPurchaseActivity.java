// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.hf;

public final class InAppPurchaseActivity extends Activity
{

    public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
    public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
    private ey yC;

    public InAppPurchaseActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        try
        {
            if (yC != null)
            {
                yC.onActivityResult(i, j, intent);
            }
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward onActivityResult to in-app purchase manager:", remoteexception);
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        yC = fd.e(this);
        if (yC == null)
        {
            hf.X("Could not create in-app purchase manager.");
            finish();
            return;
        }
        try
        {
            yC.onCreate();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward onCreate to in-app purchase manager:", remoteexception);
        }
        finish();
    }

    protected void onDestroy()
    {
        try
        {
            if (yC != null)
            {
                yC.onDestroy();
            }
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward onDestroy to in-app purchase manager:", remoteexception);
        }
        super.onDestroy();
    }
}
