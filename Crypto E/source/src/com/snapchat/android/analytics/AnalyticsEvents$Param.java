// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FROM_NOTIFICATION;
    public static final .VALUES NEWLY_RECEIVED_CHATS_COUNT;
    public static final .VALUES NEWLY_RECEIVED_SNAPS_COUNT;
    public static final .VALUES UNVIEWED_CHATS_COUNT;
    public static final .VALUES UNVIEWED_SNAPS_COUNT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$Param, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FROM_NOTIFICATION = new <init>("FROM_NOTIFICATION", 0);
        NEWLY_RECEIVED_CHATS_COUNT = new <init>("NEWLY_RECEIVED_CHATS_COUNT", 1);
        NEWLY_RECEIVED_SNAPS_COUNT = new <init>("NEWLY_RECEIVED_SNAPS_COUNT", 2);
        UNVIEWED_CHATS_COUNT = new <init>("UNVIEWED_CHATS_COUNT", 3);
        UNVIEWED_SNAPS_COUNT = new <init>("UNVIEWED_SNAPS_COUNT", 4);
        m_3B_.clone aclone[] = new <init>[5];
        aclone[0] = FROM_NOTIFICATION;
        aclone[1] = NEWLY_RECEIVED_CHATS_COUNT;
        aclone[2] = NEWLY_RECEIVED_SNAPS_COUNT;
        aclone[3] = UNVIEWED_CHATS_COUNT;
        aclone[4] = UNVIEWED_SNAPS_COUNT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
