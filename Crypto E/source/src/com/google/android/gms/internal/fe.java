// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

// Referenced classes of package com.google.android.gms.internal:
//            fa, hf

public class fe
    implements InAppPurchaseResult
{

    private final fa tX;

    public fe(fa fa1)
    {
        tX = fa1;
    }

    public void finishPurchase()
    {
        try
        {
            tX.finishPurchase();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward finishPurchase to InAppPurchaseResult", remoteexception);
        }
    }

    public String getProductId()
    {
        String s;
        try
        {
            s = tX.getProductId();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward getProductId to InAppPurchaseResult", remoteexception);
            return null;
        }
        return s;
    }

    public Intent getPurchaseData()
    {
        Intent intent;
        try
        {
            intent = tX.getPurchaseData();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward getPurchaseData to InAppPurchaseResult", remoteexception);
            return null;
        }
        return intent;
    }

    public int getResultCode()
    {
        int i;
        try
        {
            i = tX.getResultCode();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward getPurchaseData to InAppPurchaseResult", remoteexception);
            return 0;
        }
        return i;
    }

    public boolean isVerified()
    {
        boolean flag;
        try
        {
            flag = tX.isVerified();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward isVerified to InAppPurchaseResult", remoteexception);
            return false;
        }
        return flag;
    }
}
