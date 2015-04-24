// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


public class Money
{

    private final int mAmount;
    private final String mCurrencyCode;

    public Money(int i)
    {
        mCurrencyCode = com.snapchat.android.util.CashUtils.CurrencyCode.USD.name();
        mAmount = i;
    }

    public int a()
    {
        return mAmount;
    }

    public String b()
    {
        return mCurrencyCode;
    }
}
