// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.view.View;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment

class a
    implements android.view.tener
{

    final AddFriendsFragment a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            ViewUtils.f(a.getActivity());
        }
    }

    (AddFriendsFragment addfriendsfragment)
    {
        a = addfriendsfragment;
        super();
    }
}
