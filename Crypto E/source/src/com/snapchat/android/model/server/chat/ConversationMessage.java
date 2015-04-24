// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage, SignedPayload

public abstract class ConversationMessage extends SCMessage
{
    public static class Builder extends SCMessage.Builder
    {

        private Header mHeader;


        public Builder(String s, String s1, List list, SignedPayload signedpayload)
        {
            super(s);
            String s2 = ChatUtils.a(s1, (String)list.get(0));
            mHeader = (new Header.Builder()).setTo(list).setFrom(s1).setConvId(s2).setAuth(signedpayload).build();
        }
    }

    public static class Header
    {

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

        private Header(Builder builder)
        {
            from = builder.mFrom;
            to = builder.mTo;
            conv_id = builder.mConvId;
            conn_seq_num = builder.mConnSeqNum;
            auth = builder.mAuth;
        }

    }

    public static class Header.Builder
    {

        private SignedPayload mAuth;
        private long mConnSeqNum;
        private String mConvId;
        private String mFrom;
        private List mTo;

        public Header build()
        {
            return new Header(this);
        }

        public Header.Builder setAuth(SignedPayload signedpayload)
        {
            mAuth = signedpayload;
            return this;
        }

        public Header.Builder setConnSeqNum(long l)
        {
            mConnSeqNum = l;
            return this;
        }

        public Header.Builder setConvId(String s)
        {
            mConvId = s;
            return this;
        }

        public Header.Builder setFrom(String s)
        {
            mFrom = s;
            return this;
        }

        public Header.Builder setTo(List list)
        {
            mTo = list;
            return this;
        }






        public Header.Builder()
        {
        }
    }


    private Header header;
    private boolean retried;

    public ConversationMessage(Builder builder)
    {
        super(builder.getType());
        header = builder.mHeader;
    }

    public ConversationMessage(String s)
    {
        super(s);
    }

    public ConversationMessage(String s, String s1, List list)
    {
        super(s);
        String s2 = ChatUtils.a(s1, (String)list.get(0));
        header = (new Header.Builder()).setTo(list).setFrom(s1).setConvId(s2).build();
    }

    public abstract boolean canSendOverHTTP();

    public Header getHeader()
    {
        return header;
    }

    public boolean isRetried()
    {
        return retried;
    }

    public abstract boolean needsACK();

    public void setRetried(boolean flag)
    {
        retried = flag;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConversationMessage{header=").append(header).append('}').toString();
    }
}
