// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.server.ServerResponse;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, StoriesListItemViewHolder

class <init> extends FriendActionTask
{

    private final StoriesListItemViewHolder a;
    final StoriesAdapter c;

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        if (mFriend != null)
        {
            mFriend.a(FriendAction.NONE);
        }
    }

    protected void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        c.a();
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (mFriend != null)
        {
            mFriend.a(mAction);
        }
    }

    private (StoriesAdapter storiesadapter, FriendAction friendaction, Friend friend, String s, String s1, boolean flag, String s2, 
            StoriesListItemViewHolder storieslistitemviewholder)
    {
        c = storiesadapter;
        super(friendaction, friend, s, s1, flag, s2);
        a = storieslistitemviewholder;
    }

    a(StoriesAdapter storiesadapter, FriendAction friendaction, Friend friend, String s, String s1, boolean flag, String s2, 
            StoriesListItemViewHolder storieslistitemviewholder, a a1)
    {
        this(storiesadapter, friendaction, friend, s, s1, flag, s2, storieslistitemviewholder);
    }
}
