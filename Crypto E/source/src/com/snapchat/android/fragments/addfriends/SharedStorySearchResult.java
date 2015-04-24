// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendUtils;
import java.util.ArrayList;
import java.util.List;

public class SharedStorySearchResult extends Friend
{

    public String a;
    public String b;
    public ArrayList c;
    public String d;

    public SharedStorySearchResult()
    {
        super((String)null);
        c = new ArrayList();
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public List c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public boolean e()
    {
        return super.e() || FriendUtils.e(a(), User.c());
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof SharedStorySearchResult))
        {
            return false;
        } else
        {
            SharedStorySearchResult sharedstorysearchresult = (SharedStorySearchResult)obj;
            return a.equals(sharedstorysearchresult.a);
        }
    }

    public int hashCode()
    {
        return a.hashCode();
    }
}
