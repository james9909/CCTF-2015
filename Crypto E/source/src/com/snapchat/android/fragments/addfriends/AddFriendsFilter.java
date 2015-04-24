// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.listview.ScFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            SharedStorySearchResult

public class AddFriendsFilter extends ScFilter
{

    private final List c;
    private String d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    public AddFriendsFilter(List list, ExceptionReporter exceptionreporter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface scfilterinterface)
    {
        super(exceptionreporter, scfilterinterface);
        c = list;
    }

    private boolean a(Friend friend, String s)
    {
        if (e)
        {
            return ScTextUtils.b(true, friend.a(), s);
        }
        ArrayList arraylist = new ArrayList();
        arraylist.add(friend.b());
        arraylist.addAll(Arrays.asList(friend.b().split(" ")));
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            if (ScTextUtils.a(true, (String)iterator.next(), s))
            {
                return true;
            }
        }

        return ScTextUtils.b(true, friend.a(), s);
    }

    public String a()
    {
        return d;
    }

    public List a(String s)
    {
        Friend friend;
        ArrayList arraylist;
        ArrayList arraylist1;
        int i;
        int j;
        friend = null;
        d = s;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList(c);
        if (s == null)
        {
            return null;
        }
        if (!h && TextUtils.isEmpty(s))
        {
            return Collections.EMPTY_LIST;
        }
        i = 0;
        j = 0;
_L2:
        Friend friend2;
        int k;
        if (i >= arraylist1.size())
        {
            break; /* Loop/switch isn't completed */
        }
        friend2 = (Friend)arraylist1.get(i);
        if (friend2.A() && !s.equals(friend2.a()))
        {
            k = j;
        } else
        if (friend2 instanceof SharedStorySearchResult)
        {
            SharedStorySearchResult sharedstorysearchresult = (SharedStorySearchResult)friend2;
            if (a(friend2, s))
            {
                arraylist.add(sharedstorysearchresult);
                k = j;
            } else
            {
                Iterator iterator = sharedstorysearchresult.c().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s1 = (String)iterator.next();
                    if (!ScTextUtils.b(true, s1, s) && !ScTextUtils.b(true, s, s1))
                    {
                        continue;
                    }
                    arraylist.add(sharedstorysearchresult);
                    break;
                } while (true);
                k = j;
            }
        } else
        {
label0:
            {
                if (f || !s.equals(friend2.a()))
                {
                    break label0;
                }
                if (g)
                {
                    break MISSING_BLOCK_LABEL_434;
                }
                friend = friend2;
                k = j;
            }
        }
_L6:
        i++;
        j = k;
        if (true) goto _L2; else goto _L1
        Friend friend3 = friend;
_L11:
        if (!a(friend2, s)) goto _L4; else goto _L3
_L3:
        arraylist.add(friend2);
        if (friend2.Q() != com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK) goto _L4; else goto _L5
_L5:
        k = j + 1;
        friend = friend3;
          goto _L6
_L1:
        if (f) goto _L8; else goto _L7
_L7:
        if (friend != null) goto _L10; else goto _L9
_L9:
        Friend friend1 = new Friend(s);
        friend1.a(com.snapchat.android.model.Friend.SuggestState.PENDING);
        friend1.a(com.snapchat.android.util.FriendSectionizer.FriendSection.USERNAME);
        if (!g)
        {
            arraylist.add(0, friend1);
        } else
        if (j == 0 || j >= arraylist.size())
        {
            arraylist.add(friend1);
        } else
        {
            arraylist.add(j, friend1);
        }
_L8:
        return arraylist;
_L10:
        if (!g)
        {
            arraylist.add(0, friend);
        }
        if (true) goto _L8; else goto _L4
_L4:
        k = j;
        friend = friend3;
          goto _L6
        friend3 = friend2;
          goto _L11
    }

    protected void a(Exception exception)
    {
        a.b(exception);
    }

    public void a(boolean flag)
    {
        e = flag;
    }

    public void b(boolean flag)
    {
        f = flag;
    }

    public void c(boolean flag)
    {
        h = flag;
    }

    public void d(boolean flag)
    {
        g = flag;
    }
}
