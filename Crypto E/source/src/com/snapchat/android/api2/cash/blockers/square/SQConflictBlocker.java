// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

public class SQConflictBlocker extends Blocker
{

    protected CashCardManager mCashCardManager;

    public SQConflictBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    public void a(CashTransaction cashtransaction)
    {
        mCashCardManager.b();
        a(null, false);
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_CONFLICT_BLOCKER;
    }

    public boolean d()
    {
        return true;
    }
}
