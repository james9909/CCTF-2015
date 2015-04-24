// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.snapchat.android.ui.here.DisconnectReason;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlConcurrencyLayer, LiveChatProvider

class b
    implements Runnable
{

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

    _cls9(AdlConcurrencyLayer adlconcurrencylayer, DisconnectReason disconnectreason, boolean flag)
    {
        c = adlconcurrencylayer;
        a = disconnectreason;
        b = flag;
        super();
    }
}
