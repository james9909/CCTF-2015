// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.app.Activity;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlConcurrencyLayer, AdlLiveChatProvider, LiveChatProvider

class c
    implements Runnable
{

    final Activity a;
    final hatProviderCallback b;
    final HereAnalytics c;
    final AdlConcurrencyLayer d;

    public void run()
    {
        Thread.currentThread().setName("AdlConcurrencyLayer Thread");
        if (AdlConcurrencyLayer.a(d) != null)
        {
            return;
        }
        try
        {
            AdlConcurrencyLayer.a(d, new AdlLiveChatProvider());
            AdlConcurrencyLayer.a(d).a(a, b, c);
            return;
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            (new ErrorMetric("AddLive failed to load native lib.")).a(unsatisfiedlinkerror).c();
        }
    }

    hatProviderCallback(AdlConcurrencyLayer adlconcurrencylayer, Activity activity, hatProviderCallback hatprovidercallback, HereAnalytics hereanalytics)
    {
        d = adlconcurrencylayer;
        a = activity;
        b = hatprovidercallback;
        c = hereanalytics;
        super();
    }
}
