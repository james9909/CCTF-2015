// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.fragments.addfriends.SharedStorySearchResult;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendUtils;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoryGroupStoriesListItem, StoriesListItem

public class StoriesSectionizer extends FriendSectionizer
{

    public StoriesSectionizer()
    {
    }

    public com.snapchat.android.util.FriendSectionizer.FriendSection a(StoriesListItem storieslistitem, int i, boolean flag)
    {
        if ((storieslistitem instanceof StorySnapLogbook) || (storieslistitem instanceof StoryGroupStoriesListItem))
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.ME;
        }
        if (storieslistitem instanceof RecentStoryCollection)
        {
            RecentStoryCollection recentstorycollection = (RecentStoryCollection)storieslistitem;
            if (recentstorycollection.O())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.LOCAL;
            }
            if (recentstorycollection.N())
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.LIVE;
            } else
            {
                return com.snapchat.android.util.FriendSectionizer.FriendSection.STORIES;
            }
        }
        if (storieslistitem.g())
        {
            if ((storieslistitem instanceof Friend) && flag)
            {
                Friend friend = (Friend)storieslistitem;
                if (friend.J())
                {
                    return com.snapchat.android.util.FriendSectionizer.FriendSection.LOCAL;
                }
                if (friend.H())
                {
                    return com.snapchat.android.util.FriendSectionizer.FriendSection.LIVE;
                }
            }
            return com.snapchat.android.util.FriendSectionizer.FriendSection.ALPHABETICAL;
        }
        if (storieslistitem instanceof SharedStorySearchResult)
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.LIVE;
        }
        if ((storieslistitem instanceof Friend) && ((Friend)storieslistitem).B() == com.snapchat.android.model.Friend.SuggestType.USERNAME)
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.USERNAME;
        }
        if ((storieslistitem instanceof Friend) && ((Friend)storieslistitem).B() == com.snapchat.android.model.Friend.SuggestType.ADDRESS_BOOK)
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK;
        }
        if (FriendUtils.e(storieslistitem.a(), User.c()))
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.MY_FRIENDS;
        } else
        {
            return com.snapchat.android.util.FriendSectionizer.FriendSection.NONE;
        }
    }

    public com.snapchat.android.util.FriendSectionizer.FriendSection a(Friend friend, int i)
    {
        return null;
    }

    public volatile com.snapchat.android.util.FriendSectionizer.FriendSection a(Object obj, int i)
    {
        return a((Friend)obj, i);
    }
}
