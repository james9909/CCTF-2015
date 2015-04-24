// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.FriendProfileUpdateComplete;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment, AddFriendsAdapter, TappableAddFriendsTextProvider

public class MyFriendsFragment extends AddFriendsFragment
{

    public MyFriendsFragment()
    {
    }

    protected void A()
    {
        TextView textview = p;
        int i;
        if (d.isEmpty())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        textview.setVisibility(i);
    }

    protected void a(User user)
    {
        b(user);
    }

    protected void b()
    {
        u();
        n();
    }

    protected void b(User user)
    {
        e.clear();
        Iterator iterator = user.s().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!friend.x() && !TextUtils.equals(UserPrefs.k(), friend.a()) && !friend.x() && !friend.I())
            {
                e.add(friend);
            }
        } while (true);
        Collections.sort(e);
    }

    protected int d()
    {
        return 0x7f0c0129;
    }

    public void onContactsOnSnapchatUpdatedEvent(ContactsOnSnapchatUpdatedEvent contactsonsnapchatupdatedevent)
    {
        super.onContactsOnSnapchatUpdatedEvent(contactsonsnapchatupdatedevent);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = new com.snapchat.android.util.FriendSectionizer.AlphabeticalSectionizer();
        c = new com.snapchat.android.util.FriendSectionizer.AlphabeticalSectionizer();
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE;
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        h.setText(d());
        d.a(new TappableAddFriendsTextProvider());
        d.f(true);
        d.b(true);
        d.c(true);
        d.d(true);
        p.setText(0x7f0c0134);
        ProfileEventAnalytics.a(v);
        return view;
    }

    public void onFriendProfileUpdateCompleteEvent(FriendProfileUpdateComplete friendprofileupdatecomplete)
    {
        d.notifyDataSetChanged();
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        super.onRefreshFriendExistsTask(refreshonfriendexiststask);
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        Friend friend = refreshonfriendactionevent.a();
        if (friend != null && refreshonfriendactionevent.b() == FriendAction.DELETE)
        {
            d.a(friend);
            return;
        } else
        {
            B();
            return;
        }
    }

    protected String q()
    {
        return (new StringBuilder()).append(super.q()).append("_FOR_MY_FRIENDS").toString();
    }

    public boolean t_()
    {
        return true;
    }
}
