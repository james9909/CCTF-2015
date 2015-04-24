// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RecentStoryReplyEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItem

class a
    implements android.view.er
{

    final StoriesListItem a;
    final StoriesAdapter b;

    public void onClick(View view)
    {
        BusProvider.a().a(new RecentStoryReplyEvent(a.a()));
        b.a();
    }

    (StoriesAdapter storiesadapter, StoriesListItem storieslistitem)
    {
        b = storiesadapter;
        a = storieslistitem;
        super();
    }
}
