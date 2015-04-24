// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload

public static class Builder
{
    public static class Builder
    {

        private SignedPayload mAuth;
        private long mConnSeqNum;
        private String mConvId;
        private String mFrom;
        private List mTo;

        public ConversationMessage.Header build()
        {
            return new ConversationMessage.Header(this, null);
        }

        public Builder setAuth(SignedPayload signedpayload)
        {
            mAuth = signedpayload;
            return this;
        }

        public Builder setConnSeqNum(long l)
        {
            mConnSeqNum = l;
            return this;
        }

        public Builder setConvId(String s)
        {
            mConvId = s;
            return this;
        }

        public Builder setFrom(String s)
        {
            mFrom = s;
            return this;
        }

        public Builder setTo(List list)
        {
            mTo = list;
            return this;
        }






        public Builder()
        {
        }
    }


    private SignedPayload auth;
    private long conn_seq_num;
    private String conv_id;
    private String from;
    private List to;

    public SignedPayload getAuth()
    {
        return auth;
    }

    public long getConnSeqNum()
    {
        return conn_seq_num;
    }

    public String getConvId()
    {
        return conv_id;
    }

    public String getFrom()
    {
        return from;
    }

    public List getTo()
    {
        return to;
    }

    public void setAuth(SignedPayload signedpayload)
    {
        auth = signedpayload;
    }

    public void setConnSeqNum(long l)
    {
        conn_seq_num = l;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Header{from='").append(from).append('\'').append(", to=").append(to).append(", conv_id='").append(conv_id).append('\'').append(", conn_seq_num=").append(conn_seq_num).append(", auth=").append(auth).append('}').toString();
    }

    private Builder(Builder builder)
    {
        from = builder.mFrom;
        to = builder.mTo;
        conv_id = builder.mConvId;
        conn_seq_num = builder.mConnSeqNum;
        auth = builder.mAuth;
    }

    Builder(Builder builder, Builder builder1)
    {
        this(builder);
    }
}
