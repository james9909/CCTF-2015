// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SharedStoryFriendButtonClickedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class a
    implements android.view.er
{

    final Friend a;
    final StoriesAdapter b;

    public void onClick(View view)
    {
        StoriesAdapter.b(b).hideSoftInputFromWindow(view.getWindowToken(), 0);
        BusProvider.a().a(new SharedStoryFriendButtonClickedEvent(a));
    }

    nClickedEvent(StoriesAdapter storiesadapter, Friend friend)
    {
        b = storiesadapter;
        a = friend;
        super();
    }
}
