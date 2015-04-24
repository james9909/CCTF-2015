// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendProfileInfo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FriendProfileUpdateComplete;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class GetProfileInfoTask extends RequestTask
{

    private static final int DEFAULT_MAX_NUM_TO_FETCH = 20;
    private static final String FRIEND_USERNAMES_PARAM = "friend_usernames";
    private static final String TASK_NAME = "GetProfileInfoTask";
    private static final String USERNAME_PARAM = "username";
    private User mUser;
    private ArrayList mUsernamesToGet;

    public GetProfileInfoTask(Friend friend)
    {
        this(friend, 20);
    }

    public GetProfileInfoTask(Friend friend, int i)
    {
        mUsernamesToGet = new ArrayList();
        mUser = User.c();
        if (mUser != null && i > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = i / 2;
        List list = mUser.s();
        Collections.sort(list);
        int k = list.indexOf(friend);
        if (k != -1)
        {
            int l = k - j;
            int i1 = j + k;
            if (l < 0)
            {
                i1 += Math.abs(l);
                l = 0;
            }
            int j1;
            if (i1 >= list.size())
            {
                j1 = -1 + list.size();
            } else
            {
                j1 = i1;
            }
            if (list.size() <= i)
            {
                i = list.size();
            }
            mUsernamesToGet = new ArrayList(i);
            while (l <= j1) 
            {
                mUsernamesToGet.add(((Friend)list.get(l)).a());
                l++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public GetProfileInfoTask(ArrayList arraylist)
    {
        mUsernamesToGet = new ArrayList();
        mUser = User.c();
        mUsernamesToGet = arraylist;
    }

    protected String a()
    {
        return "/bq/bests";
    }

    protected void a(String s)
    {
        java.lang.reflect.Type type = TypeToken.get((new HashMap()).getClass()).getType();
        Map map = (Map)GsonUtil.a().fromJson(s, type);
        Iterator iterator = mUsernamesToGet.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            Map map1 = (Map)map.get(s1);
            if (map1 != null)
            {
                ArrayList arraylist = (ArrayList)map1.get("best_friends");
                int i = ((Double)map1.get("score")).intValue();
                FriendProfileInfo.sUsernamesToProfileInfo.put(s1, new FriendProfileInfo(arraylist, i));
            }
        } while (true);
        BusProvider.a().a(new FriendProfileUpdateComplete(true));
    }

    protected void a(String s, int i)
    {
        BusProvider.a().a(new FriendProfileUpdateComplete(false));
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("friend_usernames", GsonUtil.a().toJson(mUsernamesToGet));
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
    }

    protected String c()
    {
        return "GetProfileInfoTask";
    }

    protected void c(ServerResponse serverresponse)
    {
    }
}
