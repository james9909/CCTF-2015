// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.listview.ScFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class ChatWithFilter extends ScFilter
{

    private final List c;

    public ChatWithFilter(List list, ExceptionReporter exceptionreporter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface scfilterinterface)
    {
        super(exceptionreporter, scfilterinterface);
        c = list;
    }

    protected static boolean a(Friend friend, String s)
    {
        String s1 = friend.o();
        ArrayList arraylist = new ArrayList();
        arraylist.add(friend.a());
        arraylist.add(s1);
        arraylist.addAll(Arrays.asList(s1.split(" ")));
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            if (ScTextUtils.a(true, (String)iterator.next(), s))
            {
                return true;
            }
        }

        return false;
    }

    public List a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return c;
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (a(friend, s))
            {
                arraylist.add(friend);
            }
        } while (true);
        return arraylist;
    }
}
