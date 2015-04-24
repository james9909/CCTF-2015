// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CAMERA_PAGE;
    public static final .VALUES CONTACTS;
    public static final .VALUES MY_FRIENDS_POPUP;
    public static final .VALUES NEW_USER_CONTACT_BOOK_PAGE;
    public static final .VALUES PROFILE_ADDED_ME_PAGE;
    public static final .VALUES PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
    public static final .VALUES PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
    public static final .VALUES PROFILE_ADD_FRIENDS_MENU_PAGE;
    public static final .VALUES PROFILE_MAIN_PAGE;
    public static final .VALUES PROFILE_MY_CONTACTS_PAGE;
    public static final .VALUES REQUESTS;
    public static final .VALUES SEARCH;
    public static final .VALUES SEND;
    public static final .VALUES SETTINGS;
    public static final .VALUES STORIES;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MY_FRIENDS_POPUP = new <init>("MY_FRIENDS_POPUP", 0);
        REQUESTS = new <init>("REQUESTS", 1);
        SEARCH = new <init>("SEARCH", 2);
        CONTACTS = new <init>("CONTACTS", 3);
        SEND = new <init>("SEND", 4);
        STORIES = new <init>("STORIES", 5);
        PROFILE_MAIN_PAGE = new <init>("PROFILE_MAIN_PAGE", 6);
        PROFILE_ADDED_ME_PAGE = new <init>("PROFILE_ADDED_ME_PAGE", 7);
        PROFILE_ADD_FRIENDS_MENU_PAGE = new <init>("PROFILE_ADD_FRIENDS_MENU_PAGE", 8);
        PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE = new <init>("PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE", 9);
        PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE = new <init>("PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE", 10);
        PROFILE_MY_CONTACTS_PAGE = new <init>("PROFILE_MY_CONTACTS_PAGE", 11);
        NEW_USER_CONTACT_BOOK_PAGE = new <init>("NEW_USER_CONTACT_BOOK_PAGE", 12);
        SETTINGS = new <init>("SETTINGS", 13);
        CAMERA_PAGE = new <init>("CAMERA_PAGE", 14);
        t_3B_.clone aclone[] = new <init>[15];
        aclone[0] = MY_FRIENDS_POPUP;
        aclone[1] = REQUESTS;
        aclone[2] = SEARCH;
        aclone[3] = CONTACTS;
        aclone[4] = SEND;
        aclone[5] = STORIES;
        aclone[6] = PROFILE_MAIN_PAGE;
        aclone[7] = PROFILE_ADDED_ME_PAGE;
        aclone[8] = PROFILE_ADD_FRIENDS_MENU_PAGE;
        aclone[9] = PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE;
        aclone[10] = PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
        aclone[11] = PROFILE_MY_CONTACTS_PAGE;
        aclone[12] = NEW_USER_CONTACT_BOOK_PAGE;
        aclone[13] = SETTINGS;
        aclone[14] = CAMERA_PAGE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
