// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.cash;

import com.google.gson.Gson;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SignedPayload;
import com.snapchat.android.util.GsonUtil;
import java.util.List;

public class CashRainMessage extends ConversationMessage
{
    public static class Builder extends com.snapchat.android.model.server.chat.ConversationMessage.Builder
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

        public Builder setCount(long l)
        {
            mCount = l;
            return this;
        }

        public Builder setCreatedAt(long l)
        {
            mCreatedAt = l;
            return this;
        }



        public Builder(String s, List list, SignedPayload signedpayload)
        {
            super("cash_rain", s, list, signedpayload);
        }
    }


    public static final String TYPE = "cash_rain";
    public long count;
    public long created_at;

    protected CashRainMessage(Builder builder)
    {
        super(builder);
        created_at = builder.mCreatedAt;
        count = builder.mCount;
    }

    public boolean canSendOverHTTP()
    {
        return false;
    }

    public long getCount()
    {
        return count;
    }

    public long getCreatedAt()
    {
        return created_at;
    }

    public boolean needsACK()
    {
        return false;
    }

    public String toString()
    {
        return GsonUtil.a().toJson(this);
    }
}
