// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ReleaseMessage, SignedPayload, SCMessage

public static class lder extends lder
{

    private Map mKnownChatSequenceNumbers;
    private Map mKnownReceivedSnapsTs;
    private ype mReleaseType;

    public ReleaseMessage build()
    {
        return new ReleaseMessage(this, null);
    }

    public volatile SCMessage build()
    {
        return build();
    }

    public build setKnownChatSequenceNumbers(Map map)
    {
        mKnownChatSequenceNumbers = map;
        return this;
    }

    public mKnownChatSequenceNumbers setKnownReceivedSnapsTs(Map map)
    {
        mKnownReceivedSnapsTs = map;
        return this;
    }

    public ype setReleaseType(ype ype)
    {
        mReleaseType = ype;
        return this;
    }




    public ype(String s, List list, SignedPayload signedpayload)
    {
        super("message_release", s, list, signedpayload);
    }
}
