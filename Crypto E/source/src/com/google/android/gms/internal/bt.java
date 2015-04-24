// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            bu, hf

public class bt
    implements CustomRenderedAd
{

    private final bu pR;

    public bt(bu bu1)
    {
        pR = bu1;
    }

    public String getBaseURL()
    {
        String s;
        try
        {
            s = pR.getBaseURL();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not delegate getBaseURL to CustomRenderedAd", remoteexception);
            return null;
        }
        return s;
    }

    public String getContent()
    {
        String s;
        try
        {
            s = pR.getContent();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not delegate getContent to CustomRenderedAd", remoteexception);
            return null;
        }
        return s;
    }

    public void onAdRendered(View view)
    {
        bu bu1;
        com.google.android.gms.dynamic.d d;
        try
        {
            bu1 = pR;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not delegate onAdRendered to CustomRenderedAd", remoteexception);
            return;
        }
        if (view == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        d = e.n(view);
_L1:
        bu1.a(d);
        return;
        d = null;
          goto _L1
    }

    public void recordClick()
    {
        try
        {
            pR.recordClick();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not delegate recordClick to CustomRenderedAd", remoteexception);
        }
    }

    public void recordImpression()
    {
        try
        {
            pR.recordImpression();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not delegate recordImpression to CustomRenderedAd", remoteexception);
        }
    }
}
