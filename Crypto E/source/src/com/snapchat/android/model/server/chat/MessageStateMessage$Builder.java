// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            MessageStateMessage, SignedPayload, SCMessage

public static class <init> extends <init>
{

    private String mChatMessageId;
    private String mState;
    private int mVersion;

    public MessageStateMessage build()
    {
        return new MessageStateMessage(this, null);
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

    public mChatMessageId setState(String s)
    {
        mState = s;
        return this;
    }

    public mState setVersion(int i)
    {
        mVersion = i;
        return this;
    }




    public (String s, List list, SignedPayload signedpayload)
    {
        super("message_state", s, list, signedpayload);
    }
}
