// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            FriendsContactsPagerAdapter, MyFriendsSearchViewFragment, AddressBookSearchViewFragment

public class FriendsContactsToggleFragment extends SnapchatFragment
{

    private FriendsContactsPagerAdapter a;
    private TextView b;
    private TextView c;
    private View d;
    private View e;
    private View f;
    private ViewPager g;

    public FriendsContactsToggleFragment()
    {
    }

    static View a(FriendsContactsToggleFragment friendscontactstogglefragment)
    {
        return friendscontactstogglefragment.d;
    }

    static void a(FriendsContactsToggleFragment friendscontactstogglefragment, boolean flag)
    {
        friendscontactstogglefragment.a(flag);
    }

    private void a(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        f.setVisibility(i);
    }

    static View b(FriendsContactsToggleFragment friendscontactstogglefragment)
    {
        return friendscontactstogglefragment.e;
    }

    private void b()
    {
        d(0x7f0a002f).setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsContactsToggleFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = FriendsContactsToggleFragment.this;
                super();
            }
        });
    }

    static FriendsContactsPagerAdapter c(FriendsContactsToggleFragment friendscontactstogglefragment)
    {
        return friendscontactstogglefragment.a;
    }

    static ViewPager d(FriendsContactsToggleFragment friendscontactstogglefragment)
    {
        return friendscontactstogglefragment.g;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f040052, viewgroup, false);
        g = (ViewPager)d(0x7f0a01ea);
        a = new FriendsContactsPagerAdapter(getFragmentManager(), getString(0x7f0c00fc), getString(0x7f0c00fc));
        g.setAdapter(a);
        b = (TextView)d(0x7f0a01e6);
        c = (TextView)d(0x7f0a01e8);
        d = d(0x7f0a01e7);
        e = d(0x7f0a01e9);
        f = d(0x7f0a0035);
        g.setOnPageChangeListener(new android.support.v4.view.ViewPager.SimpleOnPageChangeListener() {

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

            
            {
                a = FriendsContactsToggleFragment.this;
                super();
            }
        });
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsContactsToggleFragment a;

            public void onClick(View view)
            {
                FriendsContactsToggleFragment.d(a).setCurrentItem(0);
                FriendsContactsToggleFragment.a(a, true);
            }

            
            {
                a = FriendsContactsToggleFragment.this;
                super();
            }
        });
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsContactsToggleFragment a;

            public void onClick(View view)
            {
                boolean flag = true;
                FriendsContactsToggleFragment.d(a).setCurrentItem(flag);
                FriendsContactsToggleFragment friendscontactstogglefragment = a;
                if (!UserPrefs.g() || !UserPrefs.J())
                {
                    flag = false;
                }
                FriendsContactsToggleFragment.a(friendscontactstogglefragment, flag);
            }

            
            {
                a = FriendsContactsToggleFragment.this;
                super();
            }
        });
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsContactsToggleFragment a;

            public void onClick(View view)
            {
                switch (FriendsContactsToggleFragment.d(a).getCurrentItem())
                {
                default:
                    return;

                case 0: // '\0'
                    BusProvider.a().a(new StartFragmentEvent(new MyFriendsSearchViewFragment()));
                    return;

                case 1: // '\001'
                    BusProvider.a().a(new StartFragmentEvent(new AddressBookSearchViewFragment()));
                    break;
                }
            }

            
            {
                a = FriendsContactsToggleFragment.this;
                super();
            }
        });
        b();
        TimeLogger.b();
        return x;
    }
}
