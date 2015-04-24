// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.SquareRequestTask;
import com.snapchat.android.api2.cash.square.UnlinkCardTask;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAccessTokenBlocker

public class SQUnlinkCardBlocker extends Blocker
{

    protected CashAuthManager mCashAuthManager;
    private boolean mRetriedAfter401;

    public SQUnlinkCardBlocker()
    {
        mRetriedAfter401 = false;
        SnapchatApplication.e().a(this);
    }

    protected SQUnlinkCardBlocker(CashAuthManager cashauthmanager)
    {
        mRetriedAfter401 = false;
        mCashAuthManager = cashauthmanager;
    }

    static boolean a(SQUnlinkCardBlocker squnlinkcardblocker)
    {
        return squnlinkcardblocker.mRetriedAfter401;
    }

    static boolean a(SQUnlinkCardBlocker squnlinkcardblocker, boolean flag)
    {
        squnlinkcardblocker.mRetriedAfter401 = flag;
        return flag;
    }

    static void b(SQUnlinkCardBlocker squnlinkcardblocker)
    {
        squnlinkcardblocker.a();
    }

    static void c(SQUnlinkCardBlocker squnlinkcardblocker)
    {
        squnlinkcardblocker.b();
    }

    protected SquareRequestTask a(com.snapchat.android.api2.cash.square.UnlinkCardTask.UnlinkSuccessListener unlinksuccesslistener)
    {
        return new UnlinkCardTask(unlinksuccesslistener);
    }

    public void a(CashTransaction cashtransaction)
    {
        Blocker blocker = e();
        blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

            final SQUnlinkCardBlocker this$0;

            public void a(Blocker blocker1)
            {
                SQUnlinkCardBlocker.b(SQUnlinkCardBlocker.this);
            }

            public void a(Blocker blocker1, List list, boolean flag)
            {
                if (list == null || list.isEmpty())
                {
                    SQUnlinkCardBlocker.this.a(new com.snapchat.android.api2.cash.square.UnlinkCardTask.UnlinkSuccessListener() {

                        final _cls1 this$1;

                        public void a()
                        {
                            SQUnlinkCardBlocker.this.a(null, true);
                        }

                        public void a(int i)
                        {
                            if (i == 401 && !SQUnlinkCardBlocker.a(_fld0))
                            {
                                SQUnlinkCardBlocker.a(_fld0, true);
                                mCashAuthManager.b();
                                SQUnlinkCardBlocker.this.a(null);
                                return;
                            } else
                            {
                                b(null, false);
                                return;
                            }
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }).g();
                    return;
                } else
                {
                    SQUnlinkCardBlocker.this.b(null, false);
                    return;
                }
            }

            public void b(Blocker blocker1)
            {
                SQUnlinkCardBlocker.c(SQUnlinkCardBlocker.this);
            }

            public void b(Blocker blocker1, List list, boolean flag)
            {
                SQUnlinkCardBlocker.this.b(null, false);
            }

            
            {
                this$0 = SQUnlinkCardBlocker.this;
                super();
            }
        });
        blocker.a(null);
    }

    protected void a(List list, boolean flag)
    {
        super.a(list, flag);
    }

    protected void b(List list, boolean flag)
    {
        super.b(list, flag);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_UNLINK_CARD_BLOCKER;
    }

    protected Blocker e()
    {
        return new SQAccessTokenBlocker();
    }
}
