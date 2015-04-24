// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            MyFriendsFragment, AddressBookFragment

public class FriendsContactsPagerAdapter extends FragmentStatePagerAdapter
{

    private final String a;
    private final String b;

    public FriendsContactsPagerAdapter(FragmentManager fragmentmanager, String s, String s1)
    {
        super(fragmentmanager);
        a = s;
        b = s1;
    }

    public int getCount()
    {
        return 2;
    }

    public Fragment getItem(int i)
    {
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 52
    //                   1 63;
           goto _L1 _L2 _L3
_L1:
        Object obj = null;
_L5:
        if (obj != null)
        {
            Bundle bundle = new Bundle();
            bundle.putBoolean("hide_action_bar", true);
            ((Fragment) (obj)).setArguments(bundle);
        }
        return ((Fragment) (obj));
_L2:
        obj = new MyFriendsFragment();
        continue; /* Loop/switch isn't completed */
_L3:
        obj = new AddressBookFragment();
        if (true) goto _L5; else goto _L4
_L4:
    }

    public CharSequence getPageTitle(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;
        }
    }
}
