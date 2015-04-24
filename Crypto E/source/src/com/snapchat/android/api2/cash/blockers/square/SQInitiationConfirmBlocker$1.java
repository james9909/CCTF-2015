// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.Timber;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQInitiationConfirmBlocker

class val.fragment
    implements com.snapchat.android.fragments.cash.CodeCallback
{

    final SQInitiationConfirmBlocker this$0;
    final SecurityCodeFragment val$fragment;
    final CashTransaction val$transaction;

    public void a()
    {
        Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
        SQInitiationConfirmBlocker.a(SQInitiationConfirmBlocker.this);
    }

    public void a(String s)
    {
        Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code", new Object[0]);
        val$transaction.g(s);
        val$fragment.d();
        SQInitiationConfirmBlocker.a(SQInitiationConfirmBlocker.this, null, true);
    }

    public void b()
    {
        Timber.b("SQInitiationConfirmBlocker", "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED", new Object[0]);
        SQInitiationConfirmBlocker.b(SQInitiationConfirmBlocker.this);
    }

    k()
    {
        this$0 = final_sqinitiationconfirmblocker;
        val$transaction = cashtransaction;
        val$fragment = SecurityCodeFragment.this;
        super();
    }
}
