// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsByUsernameFragment, AddressBookFragment

public class AddFriendsMenuFragment extends SnapchatFragment
{

    public AddFriendsMenuFragment()
    {
    }

    private void h()
    {
        d(0x7f0a002f).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsMenuFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = AddFriendsMenuFragment.this;
                super();
            }
        });
    }

    private void i()
    {
        d(0x7f0a0050).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsMenuFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new AddFriendsByUsernameFragment()));
                ProfileEventAnalytics.a();
            }

            
            {
                a = AddFriendsMenuFragment.this;
                super();
            }
        });
        d(0x7f0a0051).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsMenuFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new AddressBookFragment()));
                ProfileEventAnalytics.b();
            }

            
            {
                a = AddFriendsMenuFragment.this;
                super();
            }
        });
    }

    protected void b()
    {
        ViewUtils.a(x);
        BusProvider.a().a(new TitleBarEvent(true));
        G().clearFlags(512);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040002, viewgroup, false);
        b();
        h();
        i();
        return x;
    }

    protected void s_()
    {
        super.s_();
        ProfileEventAnalytics.a(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE);
        b();
    }
}
