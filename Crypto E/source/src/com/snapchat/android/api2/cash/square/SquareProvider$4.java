// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.model.CashTransaction;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareProvider, DeleteCashPaymentTask

class val.cashTransaction
    implements com.snapchat.android.api2.cash.ntinueForwardListener
{

    final SquareProvider this$0;
    final CashTransaction val$cashTransaction;

    public void a()
    {
        SquareProvider.this.a(val$cashTransaction).g();
    }

    public void b()
    {
    }

    Task()
    {
        this$0 = final_squareprovider;
        val$cashTransaction = CashTransaction.this;
        super();
    }
}
