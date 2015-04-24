// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.AlertDialog;
import android.content.Context;
import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.database.HasSeenOurCampusStoryDialogLog;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.fragments.stories.StoryGroupStoriesListItem;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.ui.dialog.OneButtonDialog;

// Referenced classes of package com.snapchat.android.util:
//            SnapUtils, SnapListItemHandler, LocalizationUtils, FriendUtils

class a
    implements Runnable
{

    StoriesListItem a;
    Context b;
    final SnapListItemHandler c;

    private StorySnap a()
    {
        if (a instanceof StorySnapLogbook)
        {
            StorySnap storysnap = ((StorySnapLogbook)a).e();
            if (storysnap.U())
            {
                return storysnap;
            }
        } else
        if (a instanceof RecentStoryCollection)
        {
            RecentStoryCollection recentstorycollection = (RecentStoryCollection)a;
            if (recentstorycollection.o())
            {
                return recentstorycollection.G();
            }
        } else
        {
            if (a instanceof StoryGroupStoriesListItem)
            {
                return a(((StoryGroupStoriesListItem)a).e());
            }
            StoryCollection storycollection = StoryLibrary.a().c(a.a());
            if (storycollection == null)
            {
                return null;
            }
            if (storycollection.o())
            {
                return storycollection.D();
            }
        }
        return null;
    }

    private StorySnap a(StoryGroup storygroup)
    {
        StoryCollection storycollection;
        for (storycollection = StoryLibrary.a().b(storygroup.c()); storycollection == null || !storycollection.o();)
        {
            return null;
        }

        return storycollection.D();
    }

    private void a(Friend friend, StorySnap storysnap)
    {
        String s = friend.l();
        if (s == null)
        {
            s = LocalizationUtils.a(0x7f0c0147, new Object[0]);
        }
        String s1 = friend.m();
        if (s1 == null)
        {
            s1 = LocalizationUtils.a(0x7f0c0146, new Object[0]);
        }
        OneButtonDialog onebuttondialog = new OneButtonDialog(b, s1);
        onebuttondialog.setTitle(s);
        onebuttondialog.show();
        c.c.b(storysnap.aB());
    }

    private void a(StorySnap storysnap)
    {
        Object obj;
        if (a instanceof RecentStoryCollection)
        {
            obj = (RecentStoryCollection)a;
        } else
        {
            obj = StoryLibrary.a().c(a.a());
        }
        if (obj == null)
        {
            return;
        } else
        {
            ((StoryCollection) (obj)).a(7, storysnap, false, com.snapchat.android.analytics.napContext.LOAD_STORY_SNAP_BY_TAP);
            return;
        }
    }

    public void run()
    {
        SnapListItemHandler.a(c).b();
        SnapListItemHandler.b(c).c("story");
        StorySnap storysnap = a();
        if (storysnap == null)
        {
            return;
        }
        Friend friend = FriendUtils.a(storysnap.aB(), User.c());
        if (friend.J() && !c.c.a(storysnap.aB()))
        {
            a(friend, storysnap);
            return;
        } else
        {
            a(storysnap);
            StoryCollection storycollection = SnapUtils.a(a);
            SnapListItemHandler.a(c, true);
            SnapListItemHandler.a(c, storysnap, storycollection, a instanceof RecentStoryCollection, a instanceof StorySnapLogbook);
            return;
        }
    }

    public ivedSnapContext(SnapListItemHandler snaplistitemhandler, StoriesListItem storieslistitem, Context context)
    {
        c = snaplistitemhandler;
        super();
        b = context;
        a = storieslistitem;
        StoryCollection storycollection = SnapUtils.a(a);
        StorySnap storysnap = a();
        if (storysnap != null)
        {
            SnapListItemHandler.a(snaplistitemhandler, storysnap, storycollection, a instanceof StorySnapLogbook);
        }
    }
}
