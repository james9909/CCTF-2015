// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            NotificationAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADD_FRIENDS;
    public static final .VALUES CHAT;
    public static final .VALUES FEED;
    public static final .VALUES MY_FRIENDS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        CHAT = new <init>("CHAT", 0);
        FEED = new <init>("FEED", 1);
        MY_FRIENDS = new <init>("MY_FRIENDS", 2);
        ADD_FRIENDS = new <init>("ADD_FRIENDS", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = CHAT;
        aclone[1] = FEED;
        aclone[2] = MY_FRIENDS;
        aclone[3] = ADD_FRIENDS;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
