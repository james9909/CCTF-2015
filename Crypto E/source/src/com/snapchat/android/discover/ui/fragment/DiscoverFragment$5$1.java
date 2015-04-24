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
    implements Runnable
{

    final a a;

    public void run()
    {
        DiscoverFragment.f(a.a).a(new SoftNavigationBarEvent(true));
        DiscoverFragment.f(a.a).a(new CameraStateEvent(true));
    }

    tionEndCall(tionEndCall tionendcall)
    {
        a = tionendcall;
        super();
    }

    // Unreferenced inner class com/snapchat/android/discover/ui/fragment/DiscoverFragment$5

/* anonymous class */
    class DiscoverFragment._cls5
        implements com.snapchat.android.discover.ui.OpenChannelAnimationView.AnimationEndCall
    {

        final DiscoverFragment a;

        public void a()
        {
            a.a.a();
            a.b.postDelayed(new DiscoverFragment._cls5._cls1(this), 300L);
        }

            
            {
                a = discoverfragment;
                super();
            }
    }

}
