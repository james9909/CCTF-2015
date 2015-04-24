// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            MyStoryIconsToHideWhenExpanded, ExpandedStoriesListItemViewHolder, StoriesListItemViewHolder, StoryGroupStoriesListItem, 
//            StoriesListItem

public abstract class StoriesListItemSelector
    implements com.snapchat.android.ui.listeners.SelectableListItemOnClickListener.SelectableListItemInterface
{
    public static interface StoriesListItemSelectorInterface
    {

        public abstract void a(int i);

        public abstract ExpandedStoriesListItemViewHolder b();

        public abstract MyStoryIconsToHideWhenExpanded c();
    }


    StoriesListItemViewHolder a;
    StoriesListItem b;
    StoriesListItemSelectorInterface c;

    public StoriesListItemSelector(StoriesListItemViewHolder storieslistitemviewholder, StoriesListItem storieslistitem, StoriesListItemSelectorInterface storieslistitemselectorinterface)
    {
        a = storieslistitemviewholder;
        b = storieslistitem;
        c = storieslistitemselectorinterface;
    }

    private void d()
    {
        MyStoryIconsToHideWhenExpanded mystoryiconstohidewhenexpanded;
        ExpandedStoriesListItemViewHolder expandedstorieslistitemviewholder;
        mystoryiconstohidewhenexpanded = c.c();
        expandedstorieslistitemviewholder = c.b();
        if (!mystoryiconstohidewhenexpanded.a()) goto _L2; else goto _L1
_L1:
        mystoryiconstohidewhenexpanded.a(true);
_L4:
        if (expandedstorieslistitemviewholder.d)
        {
            if (expandedstorieslistitemviewholder.b != null)
            {
                ViewUtils.c(expandedstorieslistitemviewholder.b);
            }
            expandedstorieslistitemviewholder.c.b(false);
        }
        return;
_L2:
        if (expandedstorieslistitemviewholder.d)
        {
            if (expandedstorieslistitemviewholder.c.w())
            {
                expandedstorieslistitemviewholder.c.x();
            } else
            {
                expandedstorieslistitemviewholder.c.d(true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a()
    {
        MyStoryIconsToHideWhenExpanded mystoryiconstohidewhenexpanded = c.c();
        if (mystoryiconstohidewhenexpanded.a())
        {
            mystoryiconstohidewhenexpanded.a(true);
            mystoryiconstohidewhenexpanded.b();
        }
        if (b instanceof StorySnapLogbook)
        {
            StorySnapLogbook storysnaplogbook = (StorySnapLogbook)b;
            if (!storysnaplogbook.l())
            {
                storysnaplogbook.a(com.snapchat.android.model.StorySnapLogbook.ActionState.READY);
            }
        }
        a.b(false);
        c.a(-1);
        c.b().a();
    }

    public boolean a(View view)
    {
        c.a(a.H);
        d();
        if (!(b instanceof StoryGroupStoriesListItem) && (!(b instanceof Friend) || !((Friend)b).H()))
        {
            a.b(true);
        }
        if (view != null)
        {
            c.b().a(view, a, b);
        }
        if (b instanceof StorySnapLogbook)
        {
            MyStoryIconsToHideWhenExpanded mystoryiconstohidewhenexpanded = c.c();
            mystoryiconstohidewhenexpanded.a((StorySnapLogbook)b, a);
            mystoryiconstohidewhenexpanded.a(false);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean c()
    {
        return a.u();
    }
}
