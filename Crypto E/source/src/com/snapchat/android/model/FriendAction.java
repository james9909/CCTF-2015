// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


public final class FriendAction extends Enum
{

    private static final FriendAction $VALUES[];
    public static final FriendAction ADD;
    public static final FriendAction BLOCK;
    public static final FriendAction DELETE;
    public static final FriendAction HIDE;
    public static final FriendAction IGNORE;
    public static final FriendAction INVITE;
    public static final FriendAction NONE;
    public static final FriendAction REMOVE;
    public static final FriendAction REPORT_SPAM;
    public static final FriendAction SET_DISPLAY_NAME;
    public static final FriendAction UNBLOCK;
    private String mServerActionName;

    private FriendAction(String s, int i, String s1)
    {
        super(s, i);
        mServerActionName = s1;
    }

    public static FriendAction valueOf(String s)
    {
        return (FriendAction)Enum.valueOf(com/snapchat/android/model/FriendAction, s);
    }

    public static FriendAction[] values()
    {
        return (FriendAction[])$VALUES.clone();
    }

    public String a()
    {
        return mServerActionName;
    }

    static 
    {
        ADD = new FriendAction("ADD", 0, "add");
        DELETE = new FriendAction("DELETE", 1, "delete");
        BLOCK = new FriendAction("BLOCK", 2, "block");
        UNBLOCK = new FriendAction("UNBLOCK", 3, "unblock");
        REMOVE = new FriendAction("REMOVE", 4, "remove");
        SET_DISPLAY_NAME = new FriendAction("SET_DISPLAY_NAME", 5, "display");
        REPORT_SPAM = new FriendAction("REPORT_SPAM", 6, "report_spam");
        IGNORE = new FriendAction("IGNORE", 7, "ignore");
        HIDE = new FriendAction("HIDE", 8, "hide");
        INVITE = new FriendAction("INVITE", 9, null);
        NONE = new FriendAction("NONE", 10, null);
        FriendAction afriendaction[] = new FriendAction[11];
        afriendaction[0] = ADD;
        afriendaction[1] = DELETE;
        afriendaction[2] = BLOCK;
        afriendaction[3] = UNBLOCK;
        afriendaction[4] = REMOVE;
        afriendaction[5] = SET_DISPLAY_NAME;
        afriendaction[6] = REPORT_SPAM;
        afriendaction[7] = IGNORE;
        afriendaction[8] = HIDE;
        afriendaction[9] = INVITE;
        afriendaction[10] = NONE;
        $VALUES = afriendaction;
    }
}
