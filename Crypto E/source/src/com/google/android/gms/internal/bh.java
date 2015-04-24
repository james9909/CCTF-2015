// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            ax, dc, bb, ay, 
//            he, bd, hf, au, 
//            at, ba, fc, fg, 
//            bw, bg

public final class bh
{

    private AppEventListener oC;
    private AdSize oD[];
    private String oE;
    private final dc oR;
    private final ax oS;
    private bd oT;
    private String oU;
    private ViewGroup oV;
    private InAppPurchaseListener oW;
    private PlayStorePurchaseListener oX;
    private OnCustomRenderedAdLoadedListener oY;
    private AdListener ol;

    public bh(ViewGroup viewgroup)
    {
        this(viewgroup, null, false, ax.bo());
    }

    public bh(ViewGroup viewgroup, AttributeSet attributeset, boolean flag)
    {
        this(viewgroup, attributeset, flag, ax.bo());
    }

    bh(ViewGroup viewgroup, AttributeSet attributeset, boolean flag, ax ax1)
    {
        this(viewgroup, attributeset, flag, ax1, null);
    }

    bh(ViewGroup viewgroup, AttributeSet attributeset, boolean flag, ax ax1, bd bd1)
    {
        oR = new dc();
        oV = viewgroup;
        oS = ax1;
        if (attributeset != null)
        {
            android.content.Context context = viewgroup.getContext();
            try
            {
                bb bb1 = new bb(context, attributeset);
                oD = bb1.h(flag);
                oE = bb1.getAdUnitId();
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                he.a(viewgroup, new ay(context, AdSize.BANNER), illegalargumentexception.getMessage(), illegalargumentexception.getMessage());
                return;
            }
            if (viewgroup.isInEditMode())
            {
                he.a(viewgroup, new ay(context, oD[0]), "Ads by Google");
                return;
            }
        }
        oT = bd1;
    }

    private void bu()
    {
        com.google.android.gms.dynamic.d d = oT.Z();
        if (d == null)
        {
            return;
        }
        try
        {
            oV.addView((View)e.f(d));
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to get an ad frame.", remoteexception);
        }
        return;
    }

    private void bv()
    {
        if ((oD == null || oE == null) && oT == null)
        {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        android.content.Context context = oV.getContext();
        oT = au.a(context, new ay(context, oD), oE, oR);
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
        bu();
    }

    public void a(bg bg1)
    {
        try
        {
            if (oT == null)
            {
                bv();
            }
            if (oT.a(oS.a(oV.getContext(), bg1)))
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

    public transient void a(AdSize aadsize[])
    {
        oD = aadsize;
        try
        {
            if (oT != null)
            {
                oT.a(new ay(oV.getContext(), oD));
            }
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to set the ad size.", remoteexception);
        }
        oV.requestLayout();
    }

    public void destroy()
    {
        try
        {
            if (oT != null)
            {
                oT.destroy();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to destroy AdView.", remoteexception);
        }
    }

    public AdListener getAdListener()
    {
        return ol;
    }

    public AdSize getAdSize()
    {
        AdSize adsize;
        if (oT == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        adsize = oT.aa().bp();
        return adsize;
        RemoteException remoteexception;
        remoteexception;
        hf.d("Failed to get the current AdSize.", remoteexception);
        if (oD != null)
        {
            return oD[0];
        } else
        {
            return null;
        }
    }

    public AdSize[] getAdSizes()
    {
        return oD;
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
            break MISSING_BLOCK_LABEL_27;
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

    public void pause()
    {
        try
        {
            if (oT != null)
            {
                oT.pause();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to call pause.", remoteexception);
        }
    }

    public void recordManualImpression()
    {
        try
        {
            if (oT != null)
            {
                oT.am();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to record impression.", remoteexception);
        }
    }

    public void resume()
    {
        try
        {
            if (oT != null)
            {
                oT.resume();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Failed to call resume.", remoteexception);
        }
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

    public transient void setAdSizes(AdSize aadsize[])
    {
        if (oD != null)
        {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        } else
        {
            a(aadsize);
            return;
        }
    }

    public void setAdUnitId(String s)
    {
        if (oE != null)
        {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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
            break MISSING_BLOCK_LABEL_58;
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
        hf.d("Failed to set the onCustomRenderedAdLoadedListener.", remoteexception);
        return;
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playstorepurchaselistener, String s)
    {
        if (oW != null)
        {
            throw new IllegalStateException("InAppPurchaseListener has already been set.");
        }
        oX = playstorepurchaselistener;
        oU = s;
        if (oT == null) goto _L2; else goto _L1
_L1:
        bd bd1 = oT;
        if (playstorepurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_66;
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
}
