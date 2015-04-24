// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.discover.ui.fragment.DiscoverFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.feed.FeedFragment;
import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.util.SnapchatPagerAdapter;
import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android:
//            Timber

public class HomePagerAdapter extends SnapchatPagerAdapter
{

    public HomePagerAdapter(FragmentManager fragmentmanager)
    {
        super(fragmentmanager);
    }

    public SnapchatFragment a(ViewGroup viewgroup, int i)
    {
        Timber.c("HomePagerAdapter", "Creating pager fragments", new Object[0]);
        i;
        JVM INSTR tableswitch 0 4: default 48
    //                   0 52
    //                   1 135
    //                   2 146
    //                   3 157
    //                   4 168;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        Object obj = null;
_L12:
        return ((SnapchatFragment) (obj));
_L2:
        ChatFragment chatfragment = new ChatFragment();
        boolean flag = viewgroup instanceof ViewPager;
        boolean flag1 = false;
        if (flag)
        {
            int j = ((ViewPager)viewgroup).getCurrentItem();
            flag1 = false;
            if (i == j)
            {
                flag1 = true;
            }
        }
        chatfragment.a(flag1);
        obj = chatfragment;
_L10:
        if (obj != null)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("page_index", i);
            ((SnapchatFragment) (obj)).setArguments(bundle);
            return ((SnapchatFragment) (obj));
        }
          goto _L7
_L3:
        obj = new FeedFragment();
          goto _L8
_L4:
        obj = new CameraFragment();
          goto _L8
_L5:
        obj = new StoriesFragment();
          goto _L8
_L6:
        obj = new DiscoverFragment();
_L8:
        if (true) goto _L10; else goto _L9
_L9:
_L7:
        if (true) goto _L12; else goto _L11
_L11:
    }

    public int getCount()
    {
        return 5;
    }
}
