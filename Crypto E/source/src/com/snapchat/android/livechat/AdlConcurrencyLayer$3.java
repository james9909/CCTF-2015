// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;


// Referenced classes of package com.snapchat.android.livechat:
//            AdlConcurrencyLayer, LiveChatProvider

class a
    implements Runnable
{

    final com.snapchat.android.model.server.chat.th a;
    final AdlConcurrencyLayer b;

    public void run()
    {
        if (AdlConcurrencyLayer.a(b) != null)
        {
            AdlConcurrencyLayer.a(b).a(a);
        }
    }

    ge.HereAuth(AdlConcurrencyLayer adlconcurrencylayer, com.snapchat.android.model.server.chat.th th)
    {
        b = adlconcurrencylayer;
        a = th;
        super();
    }
}
