// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.listview.ScFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItem

public class StoriesFilter extends ScFilter
{

    private final List c;
    private final StoriesAdapter.StoriesAdapterInterface d;
    private final Provider e;

    public StoriesFilter(List list, ExceptionReporter exceptionreporter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface scfilterinterface, StoriesAdapter.StoriesAdapterInterface storiesadapterinterface)
    {
        this(list, exceptionreporter, scfilterinterface, storiesadapterinterface, User.UNSAFE_USER_PROVIDER);
    }

    StoriesFilter(List list, ExceptionReporter exceptionreporter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface scfilterinterface, StoriesAdapter.StoriesAdapterInterface storiesadapterinterface, Provider provider)
    {
        super(exceptionreporter, scfilterinterface);
        c = list;
        d = storiesadapterinterface;
        e = provider;
    }

    protected static boolean a(StoriesListItem storieslistitem, String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(storieslistitem.a());
        String s1 = storieslistitem.b();
        if (s1 != null)
        {
            arraylist.addAll(Arrays.asList(s1.split(" ")));
        }
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            String s2 = (String)iterator.next();
            if (s2 != null && ScTextUtils.a(true, s2, s))
            {
                return true;
            }
        }

        return false;
    }

    protected List a(String s)
    {
        User user;
        ArrayList arraylist;
        Iterator iterator;
        int i;
        boolean flag;
        user = (User)e.get();
        if (user == null)
        {
            return c;
        }
        if (TextUtils.isEmpty(s))
        {
            return c;
        }
        arraylist = new ArrayList();
        iterator = (new ArrayList(c)).iterator();
        i = -1;
        flag = false;
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        StoriesListItem storieslistitem = (StoriesListItem)iterator.next();
        int j;
        boolean flag1;
        Friend friend1;
        if (i == -1 && !storieslistitem.g())
        {
            j = arraylist.size();
        } else
        {
            j = i;
        }
        if (storieslistitem instanceof Friend)
        {
            Friend friend2 = (Friend)storieslistitem;
            Friend friend;
            boolean flag2;
            if (d.a(friend2))
            {
                friend1 = friend2;
                flag1 = true;
            } else
            {
                friend1 = friend2;
                flag1 = false;
            }
        } else
        {
            flag1 = false;
            friend1 = null;
        }
        if (!a(storieslistitem, s))
        {
            break MISSING_BLOCK_LABEL_342;
        }
        if (!flag1)
        {
            if (friend1 != null)
            {
                if (!friend1.s())
                {
                    friend1.a(com.snapchat.android.model.Friend.SuggestState.ADDRESS_BOOK);
                    friend1.a(com.snapchat.android.model.Friend.SuggestType.ADDRESS_BOOK);
                } else
                if (!FriendUtils.e(friend1.a(), user))
                {
                    friend1.a(com.snapchat.android.model.Friend.SuggestState.EXISTS);
                    friend1.a(com.snapchat.android.model.Friend.SuggestType.ADDRESS_BOOK);
                }
            }
            arraylist.add(storieslistitem);
        }
        if (!ScTextUtils.a(storieslistitem.a(), s))
        {
            break MISSING_BLOCK_LABEL_342;
        }
        flag2 = true;
_L3:
        i = j;
        flag = flag2;
        if (true) goto _L2; else goto _L1
_L1:
        if (!flag)
        {
            friend = new Friend(s);
            if (!FriendUtils.f(s, user) || d.a(friend))
            {
                friend.a(com.snapchat.android.model.Friend.SuggestState.EXISTS);
                friend.a(com.snapchat.android.model.Friend.SuggestType.USERNAME);
            }
            if (i == -1)
            {
                arraylist.add(friend);
            } else
            {
                arraylist.add(i, friend);
            }
        }
        return arraylist;
        flag2 = flag;
          goto _L3
    }
}
