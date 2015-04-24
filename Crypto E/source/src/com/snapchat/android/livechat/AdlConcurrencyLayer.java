// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.app.Activity;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.ui.here.DisconnectReason;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.snapchat.android.livechat:
//            LiveChatProvider, AdlLiveChatProvider

public class AdlConcurrencyLayer
    implements LiveChatProvider
{

    private static final ExecutorService a = Executors.newSingleThreadExecutor();
    private volatile LiveChatProvider b;

    public AdlConcurrencyLayer()
    {
    }

    static LiveChatProvider a(AdlConcurrencyLayer adlconcurrencylayer)
    {
        return adlconcurrencylayer.b;
    }

    static LiveChatProvider a(AdlConcurrencyLayer adlconcurrencylayer, LiveChatProvider livechatprovider)
    {
        adlconcurrencylayer.b = livechatprovider;
        return livechatprovider;
    }

    public void a()
    {
        a.submit(new Runnable() {

            final AdlConcurrencyLayer a;

            public void run()
            {
                if (AdlConcurrencyLayer.a(a) != null)
                {
                    AdlConcurrencyLayer.a(a).a();
                    AdlConcurrencyLayer.a(a, null);
                }
            }

            
            {
                a = AdlConcurrencyLayer.this;
                super();
            }
        });
    }

    public void a(Activity activity, LiveChatProvider.LiveChatProviderCallback livechatprovidercallback, HereAnalytics hereanalytics)
    {
        a.submit(new Runnable(activity, livechatprovidercallback, hereanalytics) {

            final Activity a;
            final LiveChatProvider.LiveChatProviderCallback b;
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

            
            {
                d = AdlConcurrencyLayer.this;
                a = activity;
                b = livechatprovidercallback;
                c = hereanalytics;
                super();
            }
        });
    }

    public void a(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        a.submit(new Runnable(hereauth) {

            final com.snapchat.android.model.server.chat.PresenceMessage.HereAuth a;
            final AdlConcurrencyLayer b;

            public void run()
            {
                if (AdlConcurrencyLayer.a(b) != null)
                {
                    AdlConcurrencyLayer.a(b).a(a);
                }
            }

            
            {
                b = AdlConcurrencyLayer.this;
                a = hereauth;
                super();
            }
        });
    }

    public void a(DisconnectReason disconnectreason, boolean flag)
    {
        a.submit(new Runnable(disconnectreason, flag) {

            final DisconnectReason a;
            final boolean b;
            final AdlConcurrencyLayer c;

            public void run()
            {
                if (AdlConcurrencyLayer.a(c) != null)
                {
                    AdlConcurrencyLayer.a(c).a(a, b);
                }
            }

            
            {
                c = AdlConcurrencyLayer.this;
                a = disconnectreason;
                b = flag;
                super();
            }
        });
    }

    public void a(byte abyte0[], com.addlive.service.AddLiveService.VideoFrameMetadata videoframemetadata)
    {
        if (b != null)
        {
            b.a(abyte0, videoframemetadata);
        }
    }

    public boolean b()
    {
        return b != null;
    }

    public void c()
    {
        a.submit(new Runnable() {

            final AdlConcurrencyLayer a;

            public void run()
            {
                if (AdlConcurrencyLayer.a(a) != null)
                {
                    AdlConcurrencyLayer.a(a).c();
                }
            }

            
            {
                a = AdlConcurrencyLayer.this;
                super();
            }
        });
    }

    public void d()
    {
        a.submit(new Runnable() {

            final AdlConcurrencyLayer a;

            public void run()
            {
                if (AdlConcurrencyLayer.a(a) != null)
                {
                    AdlConcurrencyLayer.a(a).d();
                }
            }

            
            {
                a = AdlConcurrencyLayer.this;
                super();
            }
        });
    }

}
