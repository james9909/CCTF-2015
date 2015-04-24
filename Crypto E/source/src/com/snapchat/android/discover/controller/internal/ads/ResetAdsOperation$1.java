// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.util.Predicate;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller.internal.ads:
//            ResetAdsOperation

class a
    implements com.snapchat.android.discover.model.database.vtable.SnapRepositoryListener
{

    final ResetAdsOperation a;

    public void a(List list)
    {
        Iterator iterator = list.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            DSnapPage dsnappage = (DSnapPage)iterator.next();
            boolean flag1;
            if (ResetAdsOperation.a(a).a(dsnappage))
            {
                flag1 = flag | ResetAdsOperation.b(a).b(dsnappage, MediaState.c);
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        if (flag)
        {
            ResetAdsOperation.c(a).c();
        }
    }

    apRepositoryListener(ResetAdsOperation resetadsoperation)
    {
        a = resetadsoperation;
        super();
    }
}
