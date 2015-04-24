// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.discover.operation.ChannelListOperation;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            DiscoverFragment, ChannelCursorAdapter

class a
    implements SnapchatServiceListener
{

    final DiscoverFragment a;

    public void a(Operation operation)
    {
        int i = SnapchatServiceManager.a(operation);
        if (DiscoverFragment.a(a).contains(Integer.valueOf(i)))
        {
            DiscoverFragment.a(a).remove(Integer.valueOf(i));
            if (!DiscoverFragment.b(a))
            {
                DiscoverFragment.c(a).e();
            }
            if (DiscoverFragment.a(a).isEmpty() && (operation instanceof ChannelListOperation) && ((ChannelListOperation)operation).g() == 0 && a.a.getCount() == 0)
            {
                DiscoverFragment.d(a).a(com.snapchat.android.discover.ui.ePresenter.LoadingState.e);
                a.h();
            }
        }
    }

    r(DiscoverFragment discoverfragment)
    {
        a = discoverfragment;
        super();
    }
}
