// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.Responder;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Responder
{

    final AdlLiveChatProvider a;

    public void a(Void void1)
    {
        AdlLiveChatProvider.a(a, ssionState.c);
        AdlLiveChatProvider.a(a).a(com.snapchat.android.analytics.se.HERE_PUBLISHED);
    }

    public void errHandler(int i, String s)
    {
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Integer.valueOf(i);
        Timber.e("livechat", "Failed to publish video due to: %s (ERR: %d)", aobj);
        AdlLiveChatProvider.a(a, ssionState.a);
    }

    public void resultHandler(Object obj)
    {
        a((Void)obj);
    }

    ase(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
