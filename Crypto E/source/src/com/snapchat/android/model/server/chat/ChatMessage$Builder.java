// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage, SignedPayload, SCMessage

public static class mTimestamp extends Builder
{

    private String mChatMessageId;
    private ody mMessageBody;
    private Map mSavedState;
    private long mSeqNum;
    private long mTimestamp;

    public ChatMessage build()
    {
        return new ChatMessage(this, null);
    }

    public volatile SCMessage build()
    {
        return build();
    }

    public build setChatMessageId(String s)
    {
        mChatMessageId = s;
        return this;
    }

    public ody setMessageBody(ody ody)
    {
        mMessageBody = ody;
        return this;
    }

    public mMessageBody setSavedState(Map map)
    {
        mSavedState = map;
        return this;
    }

    public mSavedState setSeqNum(long l)
    {
        mSeqNum = l;
        return this;
    }

    public mSeqNum setTimestamp(long l)
    {
        mTimestamp = l;
        return this;
    }






    public ody(String s, List list, SignedPayload signedpayload)
    {
        super("chat_message", s, list, signedpayload);
        mChatMessageId = UUID.randomUUID().toString();
        mTimestamp = System.currentTimeMillis();
    }
}
