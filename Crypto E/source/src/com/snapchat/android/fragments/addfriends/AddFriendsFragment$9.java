// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.DialogInterface;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment

class a
    implements android.content.ckListener
{

    final AddFriendsFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AddFriendsFragment.c(a);
        UserPrefs.k(true);
        AnalyticsEvents.F();
        AddFriendsFragment.d(a).d(a.getActivity());
    }

    (AddFriendsFragment addfriendsfragment)
    {
        a = addfriendsfragment;
        super();
    }
}
