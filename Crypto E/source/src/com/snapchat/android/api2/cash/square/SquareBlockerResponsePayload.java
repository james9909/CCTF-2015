// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;

public class SquareBlockerResponsePayload
{

    public SQPaymentBlockers blockers;
    public String field;
    public String message;
    public CashPayment payment;
    public ErrorType type;

    public SquareBlockerResponsePayload()
    {
    }

    public ErrorType a()
    {
        return type;
    }
}
