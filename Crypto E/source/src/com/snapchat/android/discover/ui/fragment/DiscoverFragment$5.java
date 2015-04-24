// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            DiscoverFragment, ChannelCursorAdapter

class a
    implements com.snapchat.android.discover.ui.nView.AnimationEndCall
{

    final DiscoverFragment a;

    public void a()
    {
        a.a.a();
        a.b.postDelayed(new Runnable() {

            final DiscoverFragment._cls5 a;

            public void run()
            {
                DiscoverFragment.f(a.a).a(new SoftNavigationBarEvent(true));
                DiscoverFragment.f(a.a).a(new CameraStateEvent(true));
            }

            
            {
                a = DiscoverFragment._cls5.this;
                super();
            }
        }, 300L);
    }

    _cls1.a(DiscoverFragment discoverfragment)
    {
        a = discoverfragment;
        super();
    }
}
