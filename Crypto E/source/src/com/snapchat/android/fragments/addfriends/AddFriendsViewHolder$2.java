// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendProfileInfo;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsViewHolder

class a
    implements com.snapchat.android.model.dProfileInfoListener
{

    final Friend a;
    final AddFriendsViewHolder b;

    public void a(FriendProfileInfo friendprofileinfo)
    {
        if (friendprofileinfo != null)
        {
            ProfileEventAnalytics.c();
            b.c(a);
        }
    }

    tener(AddFriendsViewHolder addfriendsviewholder, Friend friend)
    {
        b = addfriendsviewholder;
        a = friend;
        super();
    }
}
