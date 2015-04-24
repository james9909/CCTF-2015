// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class ServerCashTransaction
{

    public int mAmount;
    public String mCashRecipientId;
    public String mCashSenderId;
    public String mConversationId;
    public long mCreatedTimestamp;
    public String mCurrencyCode;
    public boolean mFromRain;
    public boolean mIsInvisible;
    public boolean mIsSavedByRecipient;
    public boolean mIsSavedBySender;
    public boolean mIsViewedByRecipient;
    public boolean mIsViewedBySender;
    public String mMessage;
    public String mProvider;
    public int mRecipientSaveVersion;
    public String mRecipientUsername;
    public int mSenderSaveVersion;
    public String mSenderUsername;
    public String mTransactionId;
    public int mTransactionStatusCode;
    public long mUpdatedTimestamp;

    public ServerCashTransaction()
    {
        mProvider = "SQUARE";
    }
}
