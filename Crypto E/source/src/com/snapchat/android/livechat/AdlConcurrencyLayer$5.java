// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;


// Referenced classes of package com.snapchat.android.livechat:
//            AdlConcurrencyLayer, LiveChatProvider

class a
    implements Runnable
{

    final AdlConcurrencyLayer a;

    public void run()
    {
        if (AdlConcurrencyLayer.a(a) != null)
        {
            AdlConcurrencyLayer.a(a).c();
        }
    }

    _cls9(AdlConcurrencyLayer adlconcurrencylayer)
    {
        a = adlconcurrencylayer;
        super();
    }
}
