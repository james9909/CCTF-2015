// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import java.util.Locale;

public abstract class FriendSectionizer
{
    public static class AddFriendsSearchSectionizer extends FriendSectionizer
    {

        public FriendSection a(Friend friend, int i)
        {
            if (i == 0)
            {
                return FriendSection.USERNAME;
            }
            if (friend.P() == com.snapchat.android.model.Friend.Direction.INCOMING)
            {
                return FriendSection.FRIENDS_WHO_ADDED_ME;
            }
            if (friend.Q() == FriendSection.MY_ADDRESS_BOOK)
            {
                return FriendSection.MY_ADDRESS_BOOK;
            }
            if (friend.P() == com.snapchat.android.model.Friend.Direction.OUTGOING || friend.P() == com.snapchat.android.model.Friend.Direction.BOTH)
            {
                return FriendSection.MY_FRIENDS;
            } else
            {
                return FriendSection.NONE;
            }
        }

        public volatile FriendSection a(Object obj, int i)
        {
            return a((Friend)obj, i);
        }

        public AddFriendsSearchSectionizer()
        {
        }
    }

    public static class AddressBookSearchSectionizer extends FriendSectionizer
    {

        public FriendSection a(Friend friend, int i)
        {
            FriendSection friendsection = friend.Q();
            if (friendsection == FriendSection.USERNAME)
            {
                return FriendSection.USERNAME;
            }
            if (friend.P() == com.snapchat.android.model.Friend.Direction.INCOMING)
            {
                return FriendSection.FRIENDS_WHO_ADDED_ME;
            }
            if (friendsection == FriendSection.MY_ADDRESS_BOOK)
            {
                return FriendSection.MY_ADDRESS_BOOK;
            }
            if (friend.P() == com.snapchat.android.model.Friend.Direction.OUTGOING || friend.P() == com.snapchat.android.model.Friend.Direction.BOTH)
            {
                return FriendSection.MY_FRIENDS;
            } else
            {
                return FriendSection.NONE;
            }
        }

        public volatile FriendSection a(Object obj, int i)
        {
            return a((Friend)obj, i);
        }

        public AddressBookSearchSectionizer()
        {
        }
    }

    public static class AlphabeticalSectionizer extends FriendSectionizer
    {

        public FriendSection a(Friend friend, int i)
        {
            return FriendSection.ALPHABETICAL;
        }

        public volatile FriendSection a(Object obj, int i)
        {
            return a((Friend)obj, i);
        }

        public AlphabeticalSectionizer()
        {
        }
    }

    public static final class FriendSection extends Enum
    {

        private static final FriendSection $VALUES[];
        public static final FriendSection ADD_FRIEND;
        public static final FriendSection ALPHABETICAL;
        public static final FriendSection BEST_FRIEND;
        public static final FriendSection BLOCKED;
        public static final FriendSection DEFAULT;
        public static final FriendSection FRIENDS_WHO_ADDED_ME;
        public static final FriendSection INVITE;
        public static final FriendSection JUST_ADDED;
        public static final FriendSection LIVE;
        public static final FriendSection LOCAL;
        public static final FriendSection ME;
        public static final FriendSection MY_ADDRESS_BOOK;
        public static final FriendSection MY_FRIENDS;
        public static final FriendSection NEW_FRIEND;
        public static final FriendSection NONE;
        public static final FriendSection ON_SNAPCHAT;
        public static final FriendSection PENDING;
        public static final FriendSection RECENT;
        public static final FriendSection STORIES;
        public static final FriendSection SUGGESTED;
        public static final FriendSection USERNAME;

        public static FriendSection valueOf(String s)
        {
            return (FriendSection)Enum.valueOf(com/snapchat/android/util/FriendSectionizer$FriendSection, s);
        }

        public static FriendSection[] values()
        {
            return (FriendSection[])$VALUES.clone();
        }

        static 
        {
            STORIES = new FriendSection("STORIES", 0);
            LIVE = new FriendSection("LIVE", 1);
            LOCAL = new FriendSection("LOCAL", 2);
            SUGGESTED = new FriendSection("SUGGESTED", 3);
            ADD_FRIEND = new FriendSection("ADD_FRIEND", 4);
            PENDING = new FriendSection("PENDING", 5);
            BLOCKED = new FriendSection("BLOCKED", 6);
            BEST_FRIEND = new FriendSection("BEST_FRIEND", 7);
            RECENT = new FriendSection("RECENT", 8);
            DEFAULT = new FriendSection("DEFAULT", 9);
            JUST_ADDED = new FriendSection("JUST_ADDED", 10);
            NEW_FRIEND = new FriendSection("NEW_FRIEND", 11);
            ALPHABETICAL = new FriendSection("ALPHABETICAL", 12);
            ON_SNAPCHAT = new FriendSection("ON_SNAPCHAT", 13);
            INVITE = new FriendSection("INVITE", 14);
            ME = new FriendSection("ME", 15);
            FRIENDS_WHO_ADDED_ME = new FriendSection("FRIENDS_WHO_ADDED_ME", 16);
            MY_FRIENDS = new FriendSection("MY_FRIENDS", 17);
            USERNAME = new FriendSection("USERNAME", 18);
            NONE = new FriendSection("NONE", 19);
            MY_ADDRESS_BOOK = new FriendSection("MY_ADDRESS_BOOK", 20);
            FriendSection afriendsection[] = new FriendSection[21];
            afriendsection[0] = STORIES;
            afriendsection[1] = LIVE;
            afriendsection[2] = LOCAL;
            afriendsection[3] = SUGGESTED;
            afriendsection[4] = ADD_FRIEND;
            afriendsection[5] = PENDING;
            afriendsection[6] = BLOCKED;
            afriendsection[7] = BEST_FRIEND;
            afriendsection[8] = RECENT;
            afriendsection[9] = DEFAULT;
            afriendsection[10] = JUST_ADDED;
            afriendsection[11] = NEW_FRIEND;
            afriendsection[12] = ALPHABETICAL;
            afriendsection[13] = ON_SNAPCHAT;
            afriendsection[14] = INVITE;
            afriendsection[15] = ME;
            afriendsection[16] = FRIENDS_WHO_ADDED_ME;
            afriendsection[17] = MY_FRIENDS;
            afriendsection[18] = USERNAME;
            afriendsection[19] = NONE;
            afriendsection[20] = MY_ADDRESS_BOOK;
            $VALUES = afriendsection;
        }

        private FriendSection(String s, int i)
        {
            super(s, i);
        }
    }

    public static class NoSectionizer extends FriendSectionizer
    {

        public FriendSection a(Friend friend, int i)
        {
            return FriendSection.NONE;
        }

        public volatile FriendSection a(Object obj, int i)
        {
            return a((Friend)obj, i);
        }

        public NoSectionizer()
        {
        }
    }


    public FriendSectionizer()
    {
    }

    private String a(FriendSection friendsection, Context context)
    {
        int i = 0x7f0c0125;
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[FriendSection.values().length];
                try
                {
                    a[FriendSection.SUGGESTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[FriendSection.STORIES.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[FriendSection.ADD_FRIEND.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[FriendSection.PENDING.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[FriendSection.BLOCKED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[FriendSection.BEST_FRIEND.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[FriendSection.RECENT.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[FriendSection.ME.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[FriendSection.DEFAULT.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[FriendSection.JUST_ADDED.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[FriendSection.NEW_FRIEND.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[FriendSection.ON_SNAPCHAT.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    a[FriendSection.INVITE.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    a[FriendSection.FRIENDS_WHO_ADDED_ME.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    a[FriendSection.LIVE.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    a[FriendSection.LOCAL.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    a[FriendSection.MY_FRIENDS.ordinal()] = 17;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    a[FriendSection.USERNAME.ordinal()] = 18;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    a[FriendSection.MY_ADDRESS_BOOK.ordinal()] = 19;
                }
                catch (NoSuchFieldError nosuchfielderror18) { }
                try
                {
                    a[FriendSection.NONE.ordinal()] = 20;
                }
                catch (NoSuchFieldError nosuchfielderror19)
                {
                    return;
                }
            }
        }

        _cls1.a[friendsection.ordinal()];
        JVM INSTR tableswitch 1 20: default 104
    //                   1 109
    //                   2 118
    //                   3 124
    //                   4 130
    //                   5 136
    //                   6 142
    //                   7 148
    //                   8 112
    //                   9 112
    //                   10 154
    //                   11 160
    //                   12 166
    //                   13 172
    //                   14 178
    //                   15 184
    //                   16 190
    //                   17 196
    //                   18 202
    //                   19 208
    //                   20 214;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L9:
        break; /* Loop/switch isn't completed */
_L1:
        return friendsection.name();
_L2:
        i = 0x7f0c0005;
_L21:
        return context.getString(i);
_L3:
        i = 0x7f0c0103;
        continue; /* Loop/switch isn't completed */
_L4:
        i = 0x7f0c019b;
        continue; /* Loop/switch isn't completed */
_L5:
        i = 0x7f0c0155;
        continue; /* Loop/switch isn't completed */
_L6:
        i = 0x7f0c0032;
        continue; /* Loop/switch isn't completed */
_L7:
        i = 0x7f0c002f;
        continue; /* Loop/switch isn't completed */
_L8:
        i = 0x7f0c0178;
        continue; /* Loop/switch isn't completed */
_L10:
        i = 0x7f0c019c;
        continue; /* Loop/switch isn't completed */
_L11:
        i = 0x7f0c019d;
        continue; /* Loop/switch isn't completed */
_L12:
        i = 0x7f0c0015;
        continue; /* Loop/switch isn't completed */
_L13:
        i = 0x7f0c0013;
        continue; /* Loop/switch isn't completed */
_L14:
        i = 0x7f0c001c;
        continue; /* Loop/switch isn't completed */
_L15:
        i = 0x7f0c0114;
        continue; /* Loop/switch isn't completed */
_L16:
        i = 0x7f0c0116;
        continue; /* Loop/switch isn't completed */
_L17:
        i = 0x7f0c0101;
        continue; /* Loop/switch isn't completed */
_L18:
        i = 0x7f0c0102;
        continue; /* Loop/switch isn't completed */
_L19:
        i = 0x7f0c0100;
        if (true) goto _L21; else goto _L20
_L20:
        return "";
    }

    public abstract FriendSection a(Object obj, int i);

    public String a(FriendSection friendsection, Object obj, Context context)
    {
        if (friendsection == FriendSection.ALPHABETICAL)
        {
            String s = ((Friend)obj).o();
            if (TextUtils.isEmpty(s))
            {
                return "";
            } else
            {
                return s.substring(0, 1).toUpperCase(Locale.getDefault());
            }
        } else
        {
            return a(friendsection, context);
        }
    }
}
