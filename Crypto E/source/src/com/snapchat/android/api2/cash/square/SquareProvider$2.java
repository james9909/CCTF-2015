// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.blockers.Blocker;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareProvider, SquareRequestTask

class this._cls0
    implements com.snapchat.android.api2.cash.blockers.nListener
{

    final SquareProvider this$0;

    public void a(Blocker blocker)
    {
    }

    public void a(Blocker blocker, List list, boolean flag)
    {
        if (list == null || list.isEmpty())
        {
            j().g();
        }
    }

    public void b(Blocker blocker)
    {
    }

    public void b(Blocker blocker, List list, boolean flag)
    {
    }

    ()
    {
        this$0 = SquareProvider.this;
        super();
    }
}
