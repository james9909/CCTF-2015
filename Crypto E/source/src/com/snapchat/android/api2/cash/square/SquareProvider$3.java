// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.square.data.CashCustomerStatus;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareCashCustomerStatusCallback, SquareProvider, SquareCustomerProfile

class this._cls0
    implements SquareCashCustomerStatusCallback
{

    final SquareProvider this$0;

    public void a(int i)
    {
        if (i == 404)
        {
            UserPrefs.S();
        }
    }

    public void a(CashCustomerStatus cashcustomerstatus)
    {
        UserPrefs.a(new SquareCustomerProfile(cashcustomerstatus));
    }

    Status()
    {
        this$0 = SquareProvider.this;
        super();
    }
}
