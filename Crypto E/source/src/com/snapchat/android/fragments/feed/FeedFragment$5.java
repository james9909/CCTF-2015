// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.View;
import com.snapchat.android.fragments.chat.ChatWithFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.view.tener
{

    final FeedFragment a;

    public void onClick(View view)
    {
        BusProvider.a().a(new StartFragmentEvent(new ChatWithFragment()));
    }

    t(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
