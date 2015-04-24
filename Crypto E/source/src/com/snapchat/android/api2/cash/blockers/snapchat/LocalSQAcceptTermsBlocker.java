// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.SQAcceptTermsFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class LocalSQAcceptTermsBlocker extends Blocker
{

    public LocalSQAcceptTermsBlocker()
    {
    }

    static void a(LocalSQAcceptTermsBlocker localsqaccepttermsblocker)
    {
        localsqaccepttermsblocker.a();
    }

    static void a(LocalSQAcceptTermsBlocker localsqaccepttermsblocker, List list, boolean flag)
    {
        localsqaccepttermsblocker.a(list, flag);
    }

    public void a(CashTransaction cashtransaction)
    {
        if (UserPrefs.E())
        {
            a(null, true);
            return;
        } else
        {
            SQAcceptTermsFragment sqaccepttermsfragment = new SQAcceptTermsFragment();
            sqaccepttermsfragment.a(new com.snapchat.android.fragments.cash.SQAcceptTermsFragment.AcceptTermsListener() {

                final LocalSQAcceptTermsBlocker this$0;

                public void a()
                {
                    LocalSQAcceptTermsBlocker.a(LocalSQAcceptTermsBlocker.this, null, true);
                }

                public void b()
                {
                    LocalSQAcceptTermsBlocker.a(LocalSQAcceptTermsBlocker.this);
                }

            
            {
                this$0 = LocalSQAcceptTermsBlocker.this;
                super();
            }
            });
            BusProvider.a().a(new StartFragmentEvent(sqaccepttermsfragment));
            return;
        }
    }

    public BlockerOrder c()
    {
        return BlockerOrder.LOCAL_SQ_ACCEPT_TERMS_BLOCKER;
    }
}
