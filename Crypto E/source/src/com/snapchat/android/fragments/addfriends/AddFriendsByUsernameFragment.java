// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.FriendProfileUpdateComplete;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment, AddFriendsAdapter

public class AddFriendsByUsernameFragment extends AddFriendsFragment
{

    public AddFriendsByUsernameFragment()
    {
    }

    protected void b()
    {
        n();
        u();
    }

    protected int d()
    {
        return 0x7f0c0019;
    }

    public boolean e()
    {
        E();
        return false;
    }

    protected void f()
    {
    }

    public void onContactsOnSnapchatUpdatedEvent(ContactsOnSnapchatUpdatedEvent contactsonsnapchatupdatedevent)
    {
        super.onContactsOnSnapchatUpdatedEvent(contactsonsnapchatupdatedevent);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        h.setText(d());
        l.setHint(0x7f0c0004);
        Resources resources = getActivity().getResources();
        Object aobj[] = new Object[1];
        aobj[0] = UserPrefs.k();
        String s = resources.getString(0x7f0c0003, aobj);
        p.setText(s);
        d.a(true);
        D();
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
        if (refreshonfriendactionevent.a() != null && refreshonfriendactionevent.b() == FriendAction.DELETE)
        {
            return;
        } else
        {
            B();
            return;
        }
    }
}
