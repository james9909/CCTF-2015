// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            ValidateTransactionTask

class this._cls0 extends AuthPayload
{

    final int amount;
    final String currencyCode;
    final boolean isRain;
    final String message;
    final String recipient;
    final ValidateTransactionTask this$0;

    ()
    {
        this$0 = ValidateTransactionTask.this;
        super();
        recipient = ValidateTransactionTask.a(ValidateTransactionTask.this);
        amount = ValidateTransactionTask.b(ValidateTransactionTask.this);
        currencyCode = ValidateTransactionTask.c(ValidateTransactionTask.this)._mth0();
        message = ValidateTransactionTask.d(ValidateTransactionTask.this);
        isRain = ValidateTransactionTask.e(ValidateTransactionTask.this);
    }
}
