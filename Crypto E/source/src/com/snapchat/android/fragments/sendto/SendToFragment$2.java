// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.view.View;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements android.view.ner
{

    final SendToFragment a;

    public void onClick(View view)
    {
        if (SendToFragment.h(a))
        {
            SendToFragment.i(a);
        }
        SendToFragment.a(a).f();
        BusProvider.a().a(new StartFragmentEvent(new AddFriendsMenuFragment()));
    }

    uFragment(SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
