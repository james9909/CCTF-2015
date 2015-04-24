// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.view.View;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            DiscoverFragment

class a
    implements android.view.r
{

    final DiscoverFragment a;

    public void onClick(View view)
    {
        if (!a.h())
        {
            DiscoverFragment.d(a).a(com.snapchat.android.discover.ui.ePresenter.LoadingState.a);
            a.f();
        }
    }

    r(DiscoverFragment discoverfragment)
    {
        a = discoverfragment;
        super();
    }
}
