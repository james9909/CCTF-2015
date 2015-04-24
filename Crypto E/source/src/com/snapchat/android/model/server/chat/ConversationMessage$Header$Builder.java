// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload

public static class 
{

    private SignedPayload mAuth;
    private long mConnSeqNum;
    private String mConvId;
    private String mFrom;
    private List mTo;

    public  build()
    {
        return new (this, null);
    }

    public  setAuth(SignedPayload signedpayload)
    {
        mAuth = signedpayload;
        return this;
    }

    public mAuth setConnSeqNum(long l)
    {
        mConnSeqNum = l;
        return this;
    }

    public mConnSeqNum setConvId(String s)
    {
        mConvId = s;
        return this;
    }

    public mConvId setFrom(String s)
    {
        mFrom = s;
        return this;
    }

    public mFrom setTo(List list)
    {
        mTo = list;
        return this;
    }






    public ()
    {
    }
}
