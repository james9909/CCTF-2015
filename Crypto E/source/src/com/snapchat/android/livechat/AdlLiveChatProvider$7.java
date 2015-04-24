// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Runnable
{

    final AdlLiveChatProvider a;

    public void run()
    {
        Timber.c("livechat", "Running the reconnect task", new Object[0]);
        if (AdlLiveChatProvider.f(a) == ate.b)
        {
            AdlLiveChatProvider.a(a, ate.a);
            a.a(AdlLiveChatProvider.i(a));
        }
    }

    ate(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
