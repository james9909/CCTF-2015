// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.model.StoryViewRecord;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class UpdateStoriesTask extends RequestTask
{

    private static final String FRIENDS_STORIES_PARAM = "friend_stories";
    private static final String TASK_NAME = "UpdateStoriesTask";
    private static final String USERNAME_PARAM = "username";
    public static Map sPendingStoryViewRecords = new HashMap();
    private List mStoryViewRecordList;
    private String mUsername;

    public UpdateStoriesTask()
    {
        User user;
        user = User.c();
        mUsername = UserPrefs.k();
        Map map = user.e();
        map;
        JVM INSTR monitorenter ;
        mStoryViewRecordList = new ArrayList(map.size());
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); sPendingStoryViewRecords.put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            mStoryViewRecordList.add(entry.getValue());
        }

        break MISSING_BLOCK_LABEL_122;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        user.e().clear();
        map;
        JVM INSTR monitorexit ;
    }

    protected String a()
    {
        return "/bq/update_stories";
    }

    protected void a(String s, int i)
    {
        User user;
        user = User.c();
        if (user == null)
        {
            return;
        }
        Map map = user.e();
        map;
        JVM INSTR monitorenter ;
        String s1;
        for (Iterator iterator = mStoryViewRecordList.iterator(); iterator.hasNext(); sPendingStoryViewRecords.remove(s1))
        {
            StoryViewRecord storyviewrecord = (StoryViewRecord)iterator.next();
            s1 = storyviewrecord.a();
            if (!map.containsKey(s1))
            {
                map.put(s1, storyviewrecord);
            }
        }

        break MISSING_BLOCK_LABEL_104;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        map;
        JVM INSTR monitorexit ;
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", mUsername);
        bundle.putString("friend_stories", GsonUtil.a().toJson(mStoryViewRecordList));
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        StoryViewRecord storyviewrecord;
        for (Iterator iterator = mStoryViewRecordList.iterator(); iterator.hasNext(); sPendingStoryViewRecords.remove(storyviewrecord.a()))
        {
            storyviewrecord = (StoryViewRecord)iterator.next();
        }

    }

    protected String c()
    {
        return "UpdateStoriesTask";
    }

}
