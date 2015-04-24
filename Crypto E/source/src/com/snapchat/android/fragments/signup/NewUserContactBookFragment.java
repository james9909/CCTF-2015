// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.ListView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.addfriends.AddFriendsAdapter;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import java.util.ArrayList;
import java.util.Iterator;

public class NewUserContactBookFragment extends AddFriendsFragment
{

    private User B;
    private FragmentActivity C;

    public NewUserContactBookFragment()
    {
    }

    private void K()
    {
        AnalyticsEvents.a(-2 + B.t());
        L();
    }

    private void L()
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
        editor.putBoolean(SharedPreferenceKey.x.a(), true);
        editor.apply();
        startActivity(new Intent(C, com/snapchat/android/LandingPageActivity));
        C.finish();
    }

    static AddFriendsAdapter a(NewUserContactBookFragment newusercontactbookfragment)
    {
        return newusercontactbookfragment.d;
    }

    static void b(NewUserContactBookFragment newusercontactbookfragment)
    {
        newusercontactbookfragment.K();
    }

    protected Pair F()
    {
        Iterator iterator = e.iterator();
        int i = 0;
        int j = 0;
        while (iterator.hasNext()) 
        {
            Friend friend = (Friend)iterator.next();
            if (friend.e())
            {
                i++;
            }
            int k;
            if (friend.s())
            {
                k = j + 1;
            } else
            {
                k = j;
            }
            j = k;
        }
        return Pair.create(Integer.valueOf(j), Integer.valueOf(i));
    }

    protected void a(int i, boolean flag, int j)
    {
        if (flag)
        {
            AnalyticsEvents.a(i, j, d.a());
            return;
        } else
        {
            AnalyticsEvents.H();
            return;
        }
    }

    protected void a(boolean flag, int i)
    {
        if (flag && i + B.t() <= 1)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(C);
            builder.setMessage(getString(0x7f0c01f1));
            builder.setPositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener() {

                final NewUserContactBookFragment a;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    NewUserContactBookFragment.b(a);
                    AnalyticsEvents.d(true);
                    AnalyticsEvents.H();
                }

            
            {
                a = NewUserContactBookFragment.this;
                super();
            }
            });
            builder.setNegativeButton(0x7f0c0130, new android.content.DialogInterface.OnClickListener() {

                final NewUserContactBookFragment a;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    AnalyticsEvents.d(false);
                }

            
            {
                a = NewUserContactBookFragment.this;
                super();
            }
            });
            builder.create().show();
            return;
        } else
        {
            K();
            return;
        }
    }

    protected void b()
    {
        if (!UserPrefs.g())
        {
            s();
            return;
        }
        if (!UserPrefs.J())
        {
            t();
            return;
        } else
        {
            u();
            return;
        }
    }

    protected void c(boolean flag)
    {
        Pair pair = F();
        int i = ((Integer)pair.first).intValue();
        int j = ((Integer)pair.second).intValue();
        a(flag, j);
        a(i, flag, j);
    }

    public boolean e()
    {
        a(true, 0);
        return true;
    }

    protected int h()
    {
        return 0x7f0201c9;
    }

    public void onContactsOnSnapchatUpdatedEvent(ContactsOnSnapchatUpdatedEvent contactsonsnapchatupdatedevent)
    {
        super.onContactsOnSnapchatUpdatedEvent(contactsonsnapchatupdatedevent);
    }

    public void onCreate(Bundle bundle)
    {
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.NEW_USER_CONTACT_BOOK_PAGE;
        super.onCreate(bundle);
        C = getActivity();
        B = User.a(C);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.NEW_USER_CONTACT_BOOK_PAGE;
        super.onCreateView(layoutinflater, viewgroup, bundle);
        d.h(true);
        i();
        ((StickyListHeadersListView)d(0x7f0a0155)).setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            final NewUserContactBookFragment a;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int i)
            {
                if (i == 0)
                {
                    AnalyticsEvents.I();
                }
            }

            
            {
                a = NewUserContactBookFragment.this;
                super();
            }
        });
        d(0x7f0a0154).setVisibility(0);
        ViewUtils.a(G(), x, C);
        a("REGISTER_ADD_FRIENDS");
        x.setBackgroundColor(0);
        return x;
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        super.onRefreshFriendExistsTask(refreshonfriendexiststask);
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        super.onRefreshOnFriendActionEvent(refreshonfriendactionevent);
    }

    protected void u()
    {
        super.u();
        u.setVisibility(0);
        u.setEnabled(true);
        u.setOnClickListener(new android.view.View.OnClickListener() {

            final NewUserContactBookFragment a;

            public void onClick(View view)
            {
                NewUserContactBookFragment newusercontactbookfragment = a;
                boolean flag;
                if (!NewUserContactBookFragment.a(a).isEmpty())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                newusercontactbookfragment.c(flag);
            }

            
            {
                a = NewUserContactBookFragment.this;
                super();
            }
        });
    }

    protected void w()
    {
        AnalyticsEvents.G();
        L();
    }
}
