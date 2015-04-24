// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.bh;

// Referenced classes of package com.google.android.gms.ads.doubleclick:
//            PublisherAdRequest, AppEventListener, OnCustomRenderedAdLoadedListener

public final class PublisherAdView extends ViewGroup
{

    private final bh ll;

    public PublisherAdView(Context context)
    {
        super(context);
        ll = new bh(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ll = new bh(this, attributeset, true);
    }

    public PublisherAdView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        ll = new bh(this, attributeset, true);
    }

    public void destroy()
    {
        ll.destroy();
    }

    public AdListener getAdListener()
    {
        return ll.getAdListener();
    }

    public AdSize getAdSize()
    {
        return ll.getAdSize();
    }

    public AdSize[] getAdSizes()
    {
        return ll.getAdSizes();
    }

    public String getAdUnitId()
    {
        return ll.getAdUnitId();
    }

    public AppEventListener getAppEventListener()
    {
        return ll.getAppEventListener();
    }

    public String getMediationAdapterClassName()
    {
        return ll.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener()
    {
        return ll.getOnCustomRenderedAdLoadedListener();
    }

    public void loadAd(PublisherAdRequest publisheradrequest)
    {
        ll.a(publisheradrequest.Y());
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        View view = getChildAt(0);
        if (view != null && view.getVisibility() != 8)
        {
            int i1 = view.getMeasuredWidth();
            int j1 = view.getMeasuredHeight();
            int k1 = (k - i - i1) / 2;
            int l1 = (l - j - j1) / 2;
            view.layout(k1, l1, i1 + k1, j1 + l1);
        }
    }

    protected void onMeasure(int i, int j)
    {
        View view = getChildAt(0);
        AdSize adsize = getAdSize();
        int k;
        int l;
        int i1;
        int j1;
        if (view != null && view.getVisibility() != 8)
        {
            measureChild(view, i, j);
            l = view.getMeasuredWidth();
            k = view.getMeasuredHeight();
        } else
        if (adsize != null)
        {
            Context context = getContext();
            l = adsize.getWidthInPixels(context);
            k = adsize.getHeightInPixels(context);
        } else
        {
            k = 0;
            l = 0;
        }
        i1 = Math.max(l, getSuggestedMinimumWidth());
        j1 = Math.max(k, getSuggestedMinimumHeight());
        setMeasuredDimension(View.resolveSize(i1, i), View.resolveSize(j1, j));
    }

    public void pause()
    {
        ll.pause();
    }

    public void recordManualImpression()
    {
        ll.recordManualImpression();
    }

    public void resume()
    {
        ll.resume();
    }

    public void setAdListener(AdListener adlistener)
    {
        ll.setAdListener(adlistener);
    }

    public transient void setAdSizes(AdSize aadsize[])
    {
        if (aadsize == null || aadsize.length < 1)
        {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        } else
        {
            ll.a(aadsize);
            return;
        }
    }

    public void setAdUnitId(String s)
    {
        ll.setAdUnitId(s);
    }

    public void setAppEventListener(AppEventListener appeventlistener)
    {
        ll.setAppEventListener(appeventlistener);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener oncustomrenderedadloadedlistener)
    {
        ll.setOnCustomRenderedAdLoadedListener(oncustomrenderedadloadedlistener);
    }
}
