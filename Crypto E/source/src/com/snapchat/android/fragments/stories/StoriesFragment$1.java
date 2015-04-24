// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements android.view.er
{

    final StoriesFragment a;

    public void onClick(View view)
    {
        BusProvider.a().a(new StartFragmentEvent(new AddFriendsFragment()));
    }

    ent(StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
