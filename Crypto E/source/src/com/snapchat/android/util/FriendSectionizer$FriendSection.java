// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


// Referenced classes of package com.snapchat.android.util:
//            FriendSectionizer

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADD_FRIEND;
    public static final .VALUES ALPHABETICAL;
    public static final .VALUES BEST_FRIEND;
    public static final .VALUES BLOCKED;
    public static final .VALUES DEFAULT;
    public static final .VALUES FRIENDS_WHO_ADDED_ME;
    public static final .VALUES INVITE;
    public static final .VALUES JUST_ADDED;
    public static final .VALUES LIVE;
    public static final .VALUES LOCAL;
    public static final .VALUES ME;
    public static final .VALUES MY_ADDRESS_BOOK;
    public static final .VALUES MY_FRIENDS;
    public static final .VALUES NEW_FRIEND;
    public static final .VALUES NONE;
    public static final .VALUES ON_SNAPCHAT;
    public static final .VALUES PENDING;
    public static final .VALUES RECENT;
    public static final .VALUES STORIES;
    public static final .VALUES SUGGESTED;
    public static final .VALUES USERNAME;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/util/FriendSectionizer$FriendSection, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        STORIES = new <init>("STORIES", 0);
        LIVE = new <init>("LIVE", 1);
        LOCAL = new <init>("LOCAL", 2);
        SUGGESTED = new <init>("SUGGESTED", 3);
        ADD_FRIEND = new <init>("ADD_FRIEND", 4);
        PENDING = new <init>("PENDING", 5);
        BLOCKED = new <init>("BLOCKED", 6);
        BEST_FRIEND = new <init>("BEST_FRIEND", 7);
        RECENT = new <init>("RECENT", 8);
        DEFAULT = new <init>("DEFAULT", 9);
        JUST_ADDED = new <init>("JUST_ADDED", 10);
        NEW_FRIEND = new <init>("NEW_FRIEND", 11);
        ALPHABETICAL = new <init>("ALPHABETICAL", 12);
        ON_SNAPCHAT = new <init>("ON_SNAPCHAT", 13);
        INVITE = new <init>("INVITE", 14);
        ME = new <init>("ME", 15);
        FRIENDS_WHO_ADDED_ME = new <init>("FRIENDS_WHO_ADDED_ME", 16);
        MY_FRIENDS = new <init>("MY_FRIENDS", 17);
        USERNAME = new <init>("USERNAME", 18);
        NONE = new <init>("NONE", 19);
        MY_ADDRESS_BOOK = new <init>("MY_ADDRESS_BOOK", 20);
        n_3B_.clone aclone[] = new <init>[21];
        aclone[0] = STORIES;
        aclone[1] = LIVE;
        aclone[2] = LOCAL;
        aclone[3] = SUGGESTED;
        aclone[4] = ADD_FRIEND;
        aclone[5] = PENDING;
        aclone[6] = BLOCKED;
        aclone[7] = BEST_FRIEND;
        aclone[8] = RECENT;
        aclone[9] = DEFAULT;
        aclone[10] = JUST_ADDED;
        aclone[11] = NEW_FRIEND;
        aclone[12] = ALPHABETICAL;
        aclone[13] = ON_SNAPCHAT;
        aclone[14] = INVITE;
        aclone[15] = ME;
        aclone[16] = FRIENDS_WHO_ADDED_ME;
        aclone[17] = MY_FRIENDS;
        aclone[18] = USERNAME;
        aclone[19] = NONE;
        aclone[20] = MY_ADDRESS_BOOK;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
