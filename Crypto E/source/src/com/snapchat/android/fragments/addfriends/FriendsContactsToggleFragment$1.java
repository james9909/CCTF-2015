// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.view.View;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            FriendsContactsToggleFragment, FriendsContactsPagerAdapter

class a extends android.support.v4.view.ener
{

    final FriendsContactsToggleFragment a;

    public void onPageSelected(int i)
    {
        byte byte0 = 8;
        boolean flag = true;
        boolean flag1;
        View view;
        int j;
        View view1;
        int k;
        if (i == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view = FriendsContactsToggleFragment.a(a);
        if (flag1)
        {
            j = 0;
        } else
        {
            j = byte0;
        }
        view.setVisibility(j);
        view1 = FriendsContactsToggleFragment.b(a);
        if (!flag1)
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
        k = 0;
        while (k < FriendsContactsToggleFragment.c(a).getCount()) 
        {
            android.support.v4.app.Fragment fragment = FriendsContactsToggleFragment.c(a).getItem(k);
            if (fragment instanceof SnapchatFragment)
            {
                SnapchatFragment snapchatfragment = (SnapchatFragment)fragment;
                boolean flag2;
                if (k == i)
                {
                    flag2 = flag;
                } else
                {
                    flag2 = false;
                }
                snapchatfragment.g(flag2);
            }
            k++;
        }
        if (flag1)
        {
            FriendsContactsToggleFragment.a(a, flag);
            return;
        }
        FriendsContactsToggleFragment friendscontactstogglefragment = a;
        if (!UserPrefs.g() || !UserPrefs.J())
        {
            flag = false;
        }
        FriendsContactsToggleFragment.a(friendscontactstogglefragment, flag);
    }

    (FriendsContactsToggleFragment friendscontactstogglefragment)
    {
        a = friendscontactstogglefragment;
        super();
    }
}
