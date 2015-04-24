// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.snapchat.android.ui.here.DisconnectReason;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

class a
    implements Runnable
{

    final AdlLiveChatProvider a;

    public void run()
    {
        AdlLiveChatProvider.b(a).a(DisconnectReason.e);
        AdlLiveChatProvider.a(a, null);
    }

    hatProviderCallback(AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }
}
