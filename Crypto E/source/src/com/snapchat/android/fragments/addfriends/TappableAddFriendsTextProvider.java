// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendProfileInfo;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.NumberFormatUtils;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsTextProvider

public class TappableAddFriendsTextProvider extends AddFriendsTextProvider
{

    public TappableAddFriendsTextProvider()
    {
    }

    public String a(Friend friend, boolean flag)
    {
        if (!flag)
        {
            return "";
        }
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.model.Friend.Direction.values().length];
                try
                {
                    a[com.snapchat.android.model.Friend.Direction.INCOMING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.model.Friend.Direction.OUTGOING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.model.Friend.Direction.BOTH.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[friend.P().ordinal()])
        {
        default:
            if (friend.t())
            {
                return c(friend);
            } else
            {
                return super.a(friend, flag);
            }

        case 1: // '\001'
        case 2: // '\002'
            return d(friend);

        case 3: // '\003'
            return e(friend);
        }
    }

    protected String d(Friend friend)
    {
        if (friend.r_())
        {
            Object aobj[] = new Object[1];
            aobj[0] = friend.a();
            return LocalizationUtils.a(0x7f0c0008, aobj);
        } else
        {
            return LocalizationUtils.a(0x7f0c0007, new Object[0]);
        }
    }

    protected String e(Friend friend)
    {
        FriendProfileInfo friendprofileinfo = (FriendProfileInfo)FriendProfileInfo.sUsernamesToProfileInfo.get(friend.a());
        if (friendprofileinfo != null)
        {
            String s = NumberFormatUtils.b(friendprofileinfo.b());
            if (friend.r_())
            {
                Object aobj[] = new Object[2];
                aobj[0] = friend.a();
                aobj[1] = s;
                return LocalizationUtils.a(0x7f0c021f, aobj);
            } else
            {
                return LocalizationUtils.a(0x7f0c002e, new Object[] {
                    s
                });
            }
        }
        if (friend.r_())
        {
            return friend.a();
        } else
        {
            return LocalizationUtils.a(0x7f0c0115, new Object[0]);
        }
    }
}
