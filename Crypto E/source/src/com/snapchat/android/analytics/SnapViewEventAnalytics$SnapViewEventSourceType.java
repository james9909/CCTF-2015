// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            SnapViewEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CHAT;
    public static final .VALUES FEED;
    public static final .VALUES STORY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        STORY = new <init>("STORY", 0);
        FEED = new <init>("FEED", 1);
        CHAT = new <init>("CHAT", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = STORY;
        aclone[1] = FEED;
        aclone[2] = CHAT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
