// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.AddLiveService;
import com.snapchat.android.Timber;
import java.security.GeneralSecurityException;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlPerfTracking, AdlHelper

class dlingResponder extends dlingResponder
{

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

    dlingResponder(AdlPerfTracking adlperftracking, String s)
    {
        a = adlperftracking;
        super(s);
    }
}
