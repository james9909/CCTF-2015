// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.GetLocationDataTaskCompletedEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2:
//            GetLocationDataTask

class sponsePayload
    implements Runnable
{

    final GetLocationDataTask this$0;
    final sponsePayload val$result;

    public void run()
    {
        GetLocationDataTask.a(GetLocationDataTask.this, val$result.location);
        if (GetLocationDataTask.b(GetLocationDataTask.this) != null)
        {
            GetLocationDataTask.c(GetLocationDataTask.this).h(val$result.createdFriends);
        }
        StoryLibrary.a().a(val$result.createdFriendStories, false);
        if (val$result.createdFriends != null && !val$result.createdFriends.isEmpty() || val$result.createdFriendStories != null && !val$result.createdFriendStories.isEmpty())
        {
            BusProvider.a().a(new GetLocationDataTaskCompletedEvent());
        }
    }

    sponsePayload()
    {
        this$0 = final_getlocationdatatask;
        val$result = sponsePayload.this;
        super();
    }
}
