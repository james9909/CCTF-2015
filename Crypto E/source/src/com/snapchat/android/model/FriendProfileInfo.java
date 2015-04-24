// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.api.GetProfileInfoTask;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ScExecutors;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            Friend, User

public class FriendProfileInfo
{
    public static interface FriendProfileInfoListener
    {

        public abstract void a(FriendProfileInfo friendprofileinfo);
    }


    public static HashMap sUsernamesToProfileInfo = new HashMap();
    private ArrayList mBestFriends;
    private int mScore;

    public FriendProfileInfo(List list, int i)
    {
        mBestFriends = new ArrayList();
        mScore = -1;
        a(list);
        mScore = i;
    }

    public static void a(Friend friend, FriendProfileInfoListener friendprofileinfolistener)
    {
        FriendProfileInfo friendprofileinfo = (FriendProfileInfo)sUsernamesToProfileInfo.get(friend.a());
        if (friendprofileinfo == null)
        {
            (new GetProfileInfoTask(friend, friendprofileinfolistener, friend) {

                final Friend val$friend;
                final FriendProfileInfoListener val$listener;

                protected void a(ServerResponse serverresponse)
                {
                    super.a(serverresponse);
                    listener.a((FriendProfileInfo)FriendProfileInfo.sUsernamesToProfileInfo.get(friend.a()));
                }

                protected void onPostExecute(Object obj)
                {
                    a((ServerResponse)obj);
                }

            
            {
                listener = friendprofileinfolistener;
                friend = friend2;
                super(friend1);
            }
            }).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        } else
        {
            friendprofileinfolistener.a(friendprofileinfo);
            return;
        }
    }

    public ArrayList a()
    {
        return mBestFriends;
    }

    public void a(int i)
    {
        mScore = i;
    }

    public void a(List list)
    {
        mBestFriends.clear();
        User user = User.c();
        String s;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); mBestFriends.add(FriendUtils.d(s, user)))
        {
            s = (String)iterator.next();
        }

    }

    public int b()
    {
        return mScore;
    }

}
