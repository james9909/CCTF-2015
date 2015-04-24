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

class this._cls1
    implements com.snapchat.android.api2.cash.square.cessListener
{

    final hAuthManager this$1;

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

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1

/* anonymous class */
    class SQUnlinkCardBlocker._cls1
        implements com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener
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
                SQUnlinkCardBlocker.this.a(new SQUnlinkCardBlocker._cls1._cls1()).g();
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

            
            {
                this$0 = SQUnlinkCardBlocker.this;
                super();
            }
    }

}
