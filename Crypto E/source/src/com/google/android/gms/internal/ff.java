// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;

// Referenced classes of package com.google.android.gms.internal:
//            ew, hf

public class ff
    implements InAppPurchase
{

    private final ew tI;

    public ff(ew ew1)
    {
        tI = ew1;
    }

    public String getProductId()
    {
        String s;
        try
        {
            s = tI.getProductId();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward getProductId to InAppPurchase", remoteexception);
            return null;
        }
        return s;
    }

    public void recordPlayBillingResolution(int i)
    {
        try
        {
            tI.recordPlayBillingResolution(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward recordPlayBillingResolution to InAppPurchase", remoteexception);
        }
    }

    public void recordResolution(int i)
    {
        try
        {
            tI.recordResolution(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not forward recordResolution to InAppPurchase", remoteexception);
        }
    }
}
