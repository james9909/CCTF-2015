// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.operation.Operation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.HashSet;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment

class a
    implements SnapchatServiceListener
{

    final AddFriendsFragment a;

    public void a(Operation operation)
    {
        int i = SnapchatServiceManager.a(operation);
        if (AddFriendsFragment.a(a).contains(Integer.valueOf(i)))
        {
            AddFriendsFragment.a(a).remove(Integer.valueOf(i));
            a.n();
        }
    }

    (AddFriendsFragment addfriendsfragment)
    {
        a = addfriendsfragment;
        super();
    }
}
