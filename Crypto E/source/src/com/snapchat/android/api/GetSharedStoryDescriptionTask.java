// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.FriendUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class GetSharedStoryDescriptionTask extends RequestTask
{

    public static final String PATH = "/shared/description";
    private static final String TASK_NAME = "GetSharedStoryDescriptionTask";
    private String mSharedStoryId;

    public GetSharedStoryDescriptionTask(String s)
    {
        mSharedStoryId = s;
    }

    protected String a()
    {
        return "/shared/description";
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("shared_id", mSharedStoryId);
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        User user = User.c();
        if (user != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        PostToStory posttostory;
        Iterator iterator = StoryLibrary.a().f().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            posttostory = (PostToStory)iterator.next();
        } while (!TextUtils.equals(posttostory.c(), mSharedStoryId));
_L4:
        if (posttostory != null)
        {
            if (!TextUtils.isEmpty(serverresponse.LOCAL_POST_TITLE))
            {
                posttostory.a(serverresponse.LOCAL_POST_TITLE);
            }
            if (!TextUtils.isEmpty(serverresponse.LOCAL_POST_BODY))
            {
                posttostory.b(serverresponse.LOCAL_POST_BODY);
            }
        }
        StoryGroup storygroup = StoryLibrary.a().a(mSharedStoryId);
        if (storygroup != null && !TextUtils.isEmpty(serverresponse.OUR_SHARED_STORY))
        {
            storygroup.a(serverresponse.OUR_SHARED_STORY);
        }
        Friend friend = FriendUtils.b(mSharedStoryId, user);
        if (friend != null)
        {
            if (!TextUtils.isEmpty(serverresponse.FRIEND))
            {
                friend.b(serverresponse.FRIEND);
            } else
            if (!TextUtils.isEmpty(serverresponse.LOCAL_VIEW_BODY))
            {
                friend.b(serverresponse.LOCAL_VIEW_BODY);
            }
            if (!TextUtils.isEmpty(serverresponse.LOCAL_VIEW_TITLE))
            {
                friend.a(serverresponse.LOCAL_VIEW_TITLE);
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        posttostory = null;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected String c()
    {
        return "GetSharedStoryDescriptionTask";
    }
}
