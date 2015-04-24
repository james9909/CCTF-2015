// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.os.Bundle;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            DiscoverFragment, EditionViewerFragment

class a
    implements com.snapchat.android.discover.ui.nView.AnimationEndCall
{

    final ChannelView a;
    final DiscoverFragment b;

    public void a()
    {
        DiscoverFragment.a(b, new EditionViewerFragment());
        ChannelPage channelpage = a.getChannelPage();
        Bundle bundle = new Bundle();
        bundle.putParcelable(ChannelPage.a, channelpage);
        DiscoverFragment.e(b).setArguments(bundle);
        BusProvider.a().a(new StartFragmentEvent(DiscoverFragment.e(b)));
    }

    nt(DiscoverFragment discoverfragment, ChannelView channelview)
    {
        b = discoverfragment;
        a = channelview;
        super();
    }
}
