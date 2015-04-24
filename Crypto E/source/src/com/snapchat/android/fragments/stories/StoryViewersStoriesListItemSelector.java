// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.snapchat.android.model.StorySnapLogbook;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemSelector, StoriesListItemViewHolder

public class StoryViewersStoriesListItemSelector extends StoriesListItemSelector
{

    private LayoutInflater d;
    private Context e;

    public StoryViewersStoriesListItemSelector(StoriesListItemViewHolder storieslistitemviewholder, StorySnapLogbook storysnaplogbook, StoriesListItemSelector.StoriesListItemSelectorInterface storieslistitemselectorinterface, LayoutInflater layoutinflater, Context context)
    {
        super(storieslistitemviewholder, storysnaplogbook, storieslistitemselectorinterface);
        d = layoutinflater;
        e = context;
    }

    public View b()
    {
        a.y();
        a.a((StorySnapLogbook)b, d, e);
        return a.E;
    }
}
