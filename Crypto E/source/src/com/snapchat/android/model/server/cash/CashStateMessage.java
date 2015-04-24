// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.cash;

import com.google.gson.Gson;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.util.GsonUtil;

public class CashStateMessage extends ConversationMessage
{

    public static final String TYPE = "cash_state";
    private int amount;
    private Long created_at;
    private String currency_code;
    private String message;
    private String payment_id;

    private CashStateMessage(String s)
    {
        super(s);
    }

    public boolean canSendOverHTTP()
    {
        return false;
    }

    public int getAmount()
    {
        return amount;
    }

    public long getCreatedAt()
    {
        return created_at.longValue();
    }

    public com.snapchat.android.util.CashUtils.CurrencyCode getCurrencyCode()
    {
        return com.snapchat.android.util.CashUtils.CurrencyCode.valueOf(currency_code);
    }

    public String getMessage()
    {
        return message;
    }

    public String getTransactionId()
    {
        return payment_id;
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
