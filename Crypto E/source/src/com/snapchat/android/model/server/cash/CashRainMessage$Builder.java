// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.cash;

import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SignedPayload;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.cash:
//            CashRainMessage

public static class der extends com.snapchat.android.model.server.chat.der
{

    private long mCount;
    private long mCreatedAt;

    public CashRainMessage build()
    {
        return new CashRainMessage(this);
    }

    public volatile SCMessage build()
    {
        return build();
    }

    public build setCount(long l)
    {
        mCount = l;
        return this;
    }

    public mCount setCreatedAt(long l)
    {
        mCreatedAt = l;
        return this;
    }



    public der(String s, List list, SignedPayload signedpayload)
    {
        super("cash_rain", s, list, signedpayload);
    }
}
