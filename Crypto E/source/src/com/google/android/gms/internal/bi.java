// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            ax, dc, ay, au, 
//            at, bd, ba, fc, 
//            fg, bw, bg, hf

public class bi
{

    private final Context mContext;
    private AppEventListener oC;
    private String oE;
    private final dc oR;
    private final ax oS;
    private bd oT;
    private String oU;
    private InAppPurchaseListener oW;
    private PlayStorePurchaseListener oX;
    private OnCustomRenderedAdLoadedListener oY;
    private PublisherInterstitialAd oZ;
    private AdListener ol;

    public bi(Context context)
    {
        this(context, ax.bo(), null);
    }

    public bi(Context context, PublisherInterstitialAd publisherinterstitialad)
    {
        this(context, ax.bo(), publisherinterstitialad);
    }

    public bi(Context context, ax ax1, PublisherInterstitialAd publisherinterstitialad)
    {
        oR = new dc();
        mContext = context;
        oS = ax1;
        oZ = publisherinterstitialad;
    }

    private void w(String s)
    {
        if (oE == null)
        {
            x(s);
        }
        oT = au.a(mContext, new ay(), oE, oR);
        if (ol != null)
        {
            oT.a(new at(ol));
        }
        if (oC != null)
        {
            oT.a(new ba(oC));
        }
        if (oW != null)
        {
            oT.a(new fc(oW));
        }
        if (oX != null)
        {
            oT.a(new fg(oX), oU);
        }
        if (oY != null)
        {
            oT.a(new bw(oY));
        }
    }

    private void x(String s)
    {
        if (oT == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("The ad unit ID must be set on InterstitialAd before ").append(s).append(" is called.").toString());
        } else
        {
            return;
        }
    }

    public void a(bg bg1)
    {
        try
        {
            if (oT == null)
            {
                w("loadAd");
            }
            if (oT.a(oS.a(mContext, bg1)))
            {
                oR.d(bg1.br());
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to load ad.", remoteexception);
        }
    }

    public AdListener getAdListener()
    {
        return ol;
    }

    public String getAdUnitId()
    {
        return oE;
    }

    public AppEventListener getAppEventListener()
    {
        return oC;
    }

    public InAppPurchaseListener getInAppPurchaseListener()
    {
        return oW;
    }

    public String getMediationAdapterClassName()
    {
        String s;
        if (oT == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        s = oT.getMediationAdapterClassName();
        return s;
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to get the mediation adapter class name.", remoteexception);
        return null;
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener()
    {
        return oY;
    }

    public boolean isLoaded()
    {
        if (oT == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = oT.isReady();
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to check if ad is ready.", remoteexception);
            return false;
        }
        return flag;
    }

    public void setAdListener(AdListener adlistener)
    {
        ol = adlistener;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (adlistener == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        at at1 = new at(adlistener);
_L3:
        bd1.a(at1);
_L2:
        return;
        at1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to set the AdListener.", remoteexception);
        return;
    }

    public void setAdUnitId(String s)
    {
        if (oE != null)
        {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        } else
        {
            oE = s;
            return;
        }
    }

    public void setAppEventListener(AppEventListener appeventlistener)
    {
        oC = appeventlistener;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (appeventlistener == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        ba ba1 = new ba(appeventlistener);
_L3:
        bd1.a(ba1);
_L2:
        return;
        ba1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to set the AppEventListener.", remoteexception);
        return;
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inapppurchaselistener)
    {
        if (oX != null)
        {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        oW = inapppurchaselistener;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (inapppurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        fc fc1 = new fc(inapppurchaselistener);
_L3:
        bd1.a(fc1);
_L2:
        return;
        fc1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to set the InAppPurchaseListener.", remoteexception);
        return;
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener oncustomrenderedadloadedlistener)
    {
        oY = oncustomrenderedadloadedlistener;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (oncustomrenderedadloadedlistener == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        bw bw1 = new bw(oncustomrenderedadloadedlistener);
_L3:
        bd1.a(bw1);
_L2:
        return;
        bw1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to set the OnCustomRenderedAdLoadedListener.", remoteexception);
        return;
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playstorepurchaselistener, String s)
    {
        oX = playstorepurchaselistener;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (playstorepurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        fg fg1 = new fg(playstorepurchaselistener);
_L3:
        bd1.a(fg1, s);
_L2:
        return;
        fg1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to set the play store purchase parameter.", remoteexception);
        return;
    }

    public void show()
    {
        try
        {
            x("show");
            oT.showInterstitial();
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to show interstitial.", remoteexception);
        }
    }
}
