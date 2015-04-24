// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryLibrary;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemSelector, StoriesListItemViewHolder, StoriesListItem

public class FriendStoriesListItemSelector extends StoriesListItemSelector
{

    private StoriesAdapter.StoriesAdapterInterface d;

    public FriendStoriesListItemSelector(StoriesListItemViewHolder storieslistitemviewholder, StoriesListItem storieslistitem, StoriesListItemSelector.StoriesListItemSelectorInterface storieslistitemselectorinterface, StoriesAdapter.StoriesAdapterInterface storiesadapterinterface)
    {
        super(storieslistitemviewholder, storieslistitem, storieslistitemselectorinterface);
        d = storiesadapterinterface;
    }

    public void a()
    {
        super.a();
        if (a.m.getVisibility() == 0 && (TextUtils.isEmpty(d.b()) || a.G.g()) && !a.w())
        {
            a.d(true);
        }
    }

    public boolean a(View view)
    {
        if (!(b instanceof Friend)) goto _L2; else goto _L1
_L1:
        StoryCollection storycollection;
        Friend friend = (Friend)b;
        storycollection = StoryLibrary.a().c(friend.a());
        if (storycollection == null || storycollection.o()) goto _L2; else goto _L3
_L3:
        return false;
_L2:
        super.a(null);
        if (!TextUtils.isEmpty(a.m.getText()))
        {
            a.c(true);
            return false;
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    public View b()
    {
        return null;
    }

    public boolean c()
    {
        return a.u();
    }
}
