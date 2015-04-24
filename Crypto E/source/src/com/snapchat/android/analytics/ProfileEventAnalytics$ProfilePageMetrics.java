// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            ProfileEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES PROFILE_ADDED_ME_PAGE_VIEW;
    public static final .VALUES PROFILE_ADD_BY_CONTACTS_CLICK;
    public static final .VALUES PROFILE_ADD_BY_USERNAME_CLICK;
    public static final .VALUES PROFILE_ADD_FRIENDS_PAGE_VIEW;
    public static final .VALUES PROFILE_CONTACT_ADD_CLICK;
    public static final .VALUES PROFILE_CONTACT_BLOCK;
    public static final .VALUES PROFILE_CONTACT_NAME_EDIT;
    public static final .VALUES PROFILE_CONTACT_UNBLOCK;
    public static final .VALUES PROFILE_DISPLAY_NAME_CHANGE;
    public static final .VALUES PROFILE_FRIEND_BLOCK;
    public static final .VALUES PROFILE_FRIEND_DELETE;
    public static final .VALUES PROFILE_FRIEND_NAME_EDIT;
    public static final .VALUES PROFILE_FRIEND_REQUEST_ACCEPT;
    public static final .VALUES PROFILE_FRIEND_REQUEST_BLOCK;
    public static final .VALUES PROFILE_FRIEND_REQUEST_DISPLAY;
    public static final .VALUES PROFILE_FRIEND_REQUEST_IGNORE;
    public static final .VALUES PROFILE_FRIEND_REQUEST_SENT;
    public static final .VALUES PROFILE_FRIEND_SCORE_DISPLAY;
    public static final .VALUES PROFILE_MY_CONTACTS_PAGE_VIEW;
    public static final .VALUES PROFILE_PAGE_VIEW;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PROFILE_PAGE_VIEW = new <init>("PROFILE_PAGE_VIEW", 0);
        PROFILE_DISPLAY_NAME_CHANGE = new <init>("PROFILE_DISPLAY_NAME_CHANGE", 1);
        PROFILE_ADDED_ME_PAGE_VIEW = new <init>("PROFILE_ADDED_ME_PAGE_VIEW", 2);
        PROFILE_FRIEND_REQUEST_DISPLAY = new <init>("PROFILE_FRIEND_REQUEST_DISPLAY", 3);
        PROFILE_FRIEND_REQUEST_ACCEPT = new <init>("PROFILE_FRIEND_REQUEST_ACCEPT", 4);
        PROFILE_FRIEND_REQUEST_IGNORE = new <init>("PROFILE_FRIEND_REQUEST_IGNORE", 5);
        PROFILE_FRIEND_REQUEST_BLOCK = new <init>("PROFILE_FRIEND_REQUEST_BLOCK", 6);
        PROFILE_FRIEND_BLOCK = new <init>("PROFILE_FRIEND_BLOCK", 7);
        PROFILE_ADD_FRIENDS_PAGE_VIEW = new <init>("PROFILE_ADD_FRIENDS_PAGE_VIEW", 8);
        PROFILE_ADD_BY_USERNAME_CLICK = new <init>("PROFILE_ADD_BY_USERNAME_CLICK", 9);
        PROFILE_ADD_BY_CONTACTS_CLICK = new <init>("PROFILE_ADD_BY_CONTACTS_CLICK", 10);
        PROFILE_FRIEND_REQUEST_SENT = new <init>("PROFILE_FRIEND_REQUEST_SENT", 11);
        PROFILE_CONTACT_ADD_CLICK = new <init>("PROFILE_CONTACT_ADD_CLICK", 12);
        PROFILE_MY_CONTACTS_PAGE_VIEW = new <init>("PROFILE_MY_CONTACTS_PAGE_VIEW", 13);
        PROFILE_FRIEND_SCORE_DISPLAY = new <init>("PROFILE_FRIEND_SCORE_DISPLAY", 14);
        PROFILE_FRIEND_NAME_EDIT = new <init>("PROFILE_FRIEND_NAME_EDIT", 15);
        PROFILE_FRIEND_DELETE = new <init>("PROFILE_FRIEND_DELETE", 16);
        PROFILE_CONTACT_NAME_EDIT = new <init>("PROFILE_CONTACT_NAME_EDIT", 17);
        PROFILE_CONTACT_BLOCK = new <init>("PROFILE_CONTACT_BLOCK", 18);
        PROFILE_CONTACT_UNBLOCK = new <init>("PROFILE_CONTACT_UNBLOCK", 19);
        s_3B_.clone aclone[] = new <init>[20];
        aclone[0] = PROFILE_PAGE_VIEW;
        aclone[1] = PROFILE_DISPLAY_NAME_CHANGE;
        aclone[2] = PROFILE_ADDED_ME_PAGE_VIEW;
        aclone[3] = PROFILE_FRIEND_REQUEST_DISPLAY;
        aclone[4] = PROFILE_FRIEND_REQUEST_ACCEPT;
        aclone[5] = PROFILE_FRIEND_REQUEST_IGNORE;
        aclone[6] = PROFILE_FRIEND_REQUEST_BLOCK;
        aclone[7] = PROFILE_FRIEND_BLOCK;
        aclone[8] = PROFILE_ADD_FRIENDS_PAGE_VIEW;
        aclone[9] = PROFILE_ADD_BY_USERNAME_CLICK;
        aclone[10] = PROFILE_ADD_BY_CONTACTS_CLICK;
        aclone[11] = PROFILE_FRIEND_REQUEST_SENT;
        aclone[12] = PROFILE_CONTACT_ADD_CLICK;
        aclone[13] = PROFILE_MY_CONTACTS_PAGE_VIEW;
        aclone[14] = PROFILE_FRIEND_SCORE_DISPLAY;
        aclone[15] = PROFILE_FRIEND_NAME_EDIT;
        aclone[16] = PROFILE_FRIEND_DELETE;
        aclone[17] = PROFILE_CONTACT_NAME_EDIT;
        aclone[18] = PROFILE_CONTACT_BLOCK;
        aclone[19] = PROFILE_CONTACT_UNBLOCK;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
