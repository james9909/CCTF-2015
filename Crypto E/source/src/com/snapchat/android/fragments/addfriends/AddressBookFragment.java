// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment, AddFriendsAdapter

public class AddressBookFragment extends AddFriendsFragment
{

    public AddressBookFragment()
    {
    }

    protected void a(User user)
    {
        e.clear();
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet(user.s());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = user.r().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend3 = (Friend)iterator.next();
            if (!hashset.contains(friend3) && !hashset1.contains(friend3) && !friend3.x())
            {
                friend3.a(com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK);
                arraylist.add(friend3);
            }
        } while (true);
        hashset.addAll(arraylist);
        Collections.sort(arraylist);
        e.addAll(arraylist);
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator1 = user.o().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Friend friend2 = (Friend)iterator1.next();
            if (!friend2.x())
            {
                friend2.a(com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK);
                arraylist1.add(friend2);
            }
        } while (true);
        hashset.addAll(arraylist1);
        Collections.sort(arraylist1);
        e.addAll(arraylist1);
        ArrayList arraylist2 = new ArrayList();
        Iterator iterator2 = user.w().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            Friend friend1 = (Friend)iterator2.next();
            if (!FriendUtils.e(friend1.a(), user) && !friend1.x())
            {
                arraylist2.add(friend1);
            }
        } while (true);
        hashset.addAll(arraylist2);
        Collections.sort(arraylist2);
        e.addAll(arraylist2);
        ArrayList arraylist3 = new ArrayList();
        Iterator iterator3 = hashset1.iterator();
        do
        {
            if (!iterator3.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator3.next();
            if (!hashset.contains(friend) && !friend.x() && !friend.I())
            {
                arraylist3.add(friend);
            }
        } while (true);
        Collections.sort(arraylist3);
        e.addAll(arraylist3);
    }

    protected int d()
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[AddFriendsFragment.Page.values().length];
                try
                {
                    a[AddFriendsFragment.Page.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[AddFriendsFragment.Page.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[a.ordinal()])
        {
        default:
            return 0x7f0c0028;

        case 1: // '\001'
        case 2: // '\002'
            return 0x7f0c00fa;
        }
    }

    public void onContactsOnSnapchatUpdatedEvent(ContactsOnSnapchatUpdatedEvent contactsonsnapchatupdatedevent)
    {
        super.onContactsOnSnapchatUpdatedEvent(contactsonsnapchatupdatedevent);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        c = new com.snapchat.android.util.FriendSectionizer.AddressBookSearchSectionizer();
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
        d.e(true);
        return view;
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        super.onRefreshFriendExistsTask(refreshonfriendexiststask);
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        super.onRefreshOnFriendActionEvent(refreshonfriendactionevent);
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        super.onUserLoadedEvent(userloadedevent);
    }

    protected String q()
    {
        return (new StringBuilder()).append(super.q()).append("_FOR_ADDRESS_BOOK").toString();
    }
}
