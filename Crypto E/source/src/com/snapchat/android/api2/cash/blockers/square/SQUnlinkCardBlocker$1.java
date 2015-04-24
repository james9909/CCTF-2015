// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.square.SquareRequestTask;
import com.snapchat.android.cash.CashAuthManager;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQUnlinkCardBlocker

class this._cls0
    implements com.snapchat.android.api2.cash.blockers.ener
{

    final SQUnlinkCardBlocker this$0;

    public void a(Blocker blocker)
    {
        SQUnlinkCardBlocker.b(SQUnlinkCardBlocker.this);
    }

    public void a(Blocker blocker, List list, boolean flag)
    {
        if (list == null || list.isEmpty())
        {
            SQUnlinkCardBlocker.this.a(new com.snapchat.android.api2.cash.square.UnlinkCardTask.UnlinkSuccessListener() {

                final SQUnlinkCardBlocker._cls1 this$1;

                public void a()
                {
                    SQUnlinkCardBlocker.this.a(null, true);
                }

                public void a(int i)
                {
                    if (i == 401 && !SQUnlinkCardBlocker.a(this$0))
                    {
                        SQUnlinkCardBlocker.a(this$0, true);
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
                this$1 = SQUnlinkCardBlocker._cls1.this;
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

    public void b(Blocker blocker)
    {
        SQUnlinkCardBlocker.c(SQUnlinkCardBlocker.this);
    }

    public void b(Blocker blocker, List list, boolean flag)
    {
        SQUnlinkCardBlocker.this.b(null, false);
    }

    _cls1.this._cls1()
    {
        this$0 = SQUnlinkCardBlocker.this;
        super();
    }
}
