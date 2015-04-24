// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            GetCashEligibilityTask

class this._cls0 extends AuthPayload
{

    String recipient;
    final GetCashEligibilityTask this$0;

    ()
    {
        this$0 = GetCashEligibilityTask.this;
        super();
        recipient = GetCashEligibilityTask.a(GetCashEligibilityTask.this);
    }
}
