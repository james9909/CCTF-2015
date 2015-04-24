// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.text.TextUtils;
import com.addlive.service.AddLiveService;
import com.snapchat.android.Timber;
import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Hex;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

class AdlPerfTracking
{

    private static final List a = Arrays.asList(new String[] {
        "https://cnc.addlive.io/events.store"
    });
    private final AddLiveService b;

    AdlPerfTracking(AddLiveService addliveservice)
    {
        b = addliveservice;
    }

    static AddLiveService a(AdlPerfTracking adlperftracking)
    {
        return adlperftracking.b;
    }

    static String a(AdlPerfTracking adlperftracking, String s, long l)
    {
        return adlperftracking.a(s, l);
    }

    private String a(String s, long l)
    {
        Serializable aserializable[] = new Serializable[2];
        aserializable[0] = s;
        aserializable[1] = Long.valueOf(l);
        String s1 = TextUtils.join("|", Arrays.asList(aserializable));
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec("Ir3boG9oahw6bo9Xzei9Phei".getBytes(), "HmacSHA256"));
        return new String(Hex.encodeHex(mac.doFinal(s1.getBytes())));
    }

    void a()
    {
        Timber.c("livechat", "Setting up the AddLive performance gathering metrics", new Object[0]);
        String s = (String)a.get((int)(System.currentTimeMillis() % (long)a.size()));
        b.setProperty(AdlHelper.a("setProperty"), "global.service.eventsTrackingEndpoint", s);
        b.startEventsTracking(AdlHelper.a("startEventsTracking"), "ADL_Performance.log");
    }

    void b()
    {
        Timber.c("livechat", "Flushing the AddLive performance metrics", new Object[0]);
        AdlHelper.ErrorHandlingResponder errorhandlingresponder = new AdlHelper.ErrorHandlingResponder("getEventsChecksum") {

            final AdlPerfTracking a;

            public void a(String s)
            {
                try
                {
                    long l = 900L + System.currentTimeMillis() / 1000L;
                    String s1 = AdlPerfTracking.a(a, s, l);
                    AdlPerfTracking.a(a).flushEvents(AdlHelper.a("flushEvents"), s1, Long.valueOf(l));
                    a.a();
                    return;
                }
                catch (GeneralSecurityException generalsecurityexception)
                {
                    Timber.e("livechat", (new StringBuilder()).append("Failed to flush performance stats due to security exception: ").append(generalsecurityexception).toString(), new Object[0]);
                }
            }

            public void resultHandler(Object obj)
            {
                a((String)obj);
            }

            
            {
                a = AdlPerfTracking.this;
                super(s);
            }
        };
        b.getEventsChecksum(errorhandlingresponder);
    }

}
