// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.view.View;
import com.snapchat.android.fragments.stories.StoriesListItemViewHolder;
import com.snapchat.android.model.RecentStoryCollection;

public class RecentUpdatesStoriesListItemOnClickListener
    implements android.view.View.OnClickListener
{

    private StoriesListItemViewHolder a;
    private com.snapchat.android.fragments.stories.StoriesAdapter.StoriesAdapterInterface b;
    private RecentStoryCollection c;

    public RecentUpdatesStoriesListItemOnClickListener(StoriesListItemViewHolder storieslistitemviewholder, com.snapchat.android.fragments.stories.StoriesAdapter.StoriesAdapterInterface storiesadapterinterface, RecentStoryCollection recentstorycollection)
    {
        a = storieslistitemviewholder;
        b = storiesadapterinterface;
        c = recentstorycollection;
    }

    public void onClick(View view)
    {
        a.a(3000L);
        b.a(c);
    }
}
