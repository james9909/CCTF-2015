// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.listview.ScFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class SendToFilter extends ScFilter
{

    private final List c;
    private final List d;

    public SendToFilter(List list, List list1, ExceptionReporter exceptionreporter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface scfilterinterface)
    {
        super(exceptionreporter, scfilterinterface);
        c = list;
        d = list1;
    }

    protected static boolean a(Friend friend, String s)
    {
        if (friend.x())
        {
            return false;
        }
        ArrayList arraylist = new ArrayList();
        arraylist.add(friend.a());
        String s1 = friend.b();
        if (s1 != null)
        {
            arraylist.addAll(Arrays.asList(s1.split(" ")));
        }
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            if (ScTextUtils.a(true, (String)iterator.next(), s))
            {
                return true;
            }
        }

        return false;
    }

    protected List a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return c;
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = d.iterator();
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend1 = (Friend)iterator.next();
            if (ScTextUtils.a(friend1.a(), s))
            {
                flag = true;
            }
            if (a(friend1, s))
            {
                arraylist.add(friend1);
            }
        } while (true);
        if (!flag)
        {
            Friend friend = new Friend(s);
            friend.a(com.snapchat.android.model.Friend.SuggestState.PENDING);
            arraylist.add(friend);
        }
        return arraylist;
    }
}
