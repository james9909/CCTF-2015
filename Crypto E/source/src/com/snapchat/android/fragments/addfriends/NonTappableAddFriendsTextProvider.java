// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.LocalizationUtils;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsTextProvider

public class NonTappableAddFriendsTextProvider extends AddFriendsTextProvider
{

    private final Provider a;
    private User b;

    public NonTappableAddFriendsTextProvider()
    {
        this(User.UNSAFE_USER_PROVIDER);
    }

    NonTappableAddFriendsTextProvider(Provider provider)
    {
        a = provider;
    }

    public String a(Friend friend, boolean flag)
    {
        if (friend.P() == com.snapchat.android.model.Friend.Direction.INCOMING)
        {
            return d(friend);
        }
        if (friend.t())
        {
            return c(friend);
        } else
        {
            return super.a(friend, flag);
        }
    }

    protected String d(Friend friend)
    {
        if (friend.r_())
        {
            return g(friend);
        } else
        {
            return f(friend);
        }
    }

    protected boolean e(Friend friend)
    {
        if (b == null)
        {
            b = (User)a.get();
        }
        return b != null && b.a(friend);
    }

    protected String f(Friend friend)
    {
        if (e(friend))
        {
            return LocalizationUtils.a(0x7f0c010a, new Object[0]);
        }
        if (friend.S() == com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_QR_CODE)
        {
            return LocalizationUtils.a(0x7f0c0026, new Object[0]);
        }
        if (friend.S() == com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_PHONE)
        {
            return LocalizationUtils.a(0x7f0c0025, new Object[0]);
        }
        if (friend.S() == com.snapchat.android.model.Friend.AddSourceType.ADDED_BY_USERNAME)
        {
            return LocalizationUtils.a(0x7f0c0027, new Object[0]);
        } else
        {
            return null;
        }
    }

    protected String g(Friend friend)
    {
        String s = f(friend);
        if (!TextUtils.isEmpty(s))
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = friend.a();
            return LocalizationUtils.a(0x7f0c017d, aobj);
        } else
        {
            return friend.a();
        }
    }
}
