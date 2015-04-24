// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            SyncAllTask

class this._cls0
    implements Runnable
{

    final SyncAllTask this$0;

    public void run()
    {
        if (mUser.B() != null && !mUser.B().isEmpty())
        {
            SnapchatServiceManager.a().c();
            for (Iterator iterator = (new ArrayList(mUser.B().values())).iterator(); iterator.hasNext(); ((ReceivedSnap)iterator.next()).C()) { }
        }
    }

    ()
    {
        this$0 = SyncAllTask.this;
        super();
    }
}
