// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            NetworkAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES PREVIEW_SCREEN;
    public static final .VALUES RETRY_POST_FAILED_STORY;
    public static final .VALUES RETRY_SEND_FAILED_SNAP;
    public static final .VALUES SEND_TO_SCREEN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/NetworkAnalytics$SnapSendContext, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SEND_TO_SCREEN = new <init>("SEND_TO_SCREEN", 0);
        PREVIEW_SCREEN = new <init>("PREVIEW_SCREEN", 1);
        RETRY_SEND_FAILED_SNAP = new <init>("RETRY_SEND_FAILED_SNAP", 2);
        RETRY_POST_FAILED_STORY = new <init>("RETRY_POST_FAILED_STORY", 3);
        t_3B_.clone aclone[] = new <init>[4];
        aclone[0] = SEND_TO_SCREEN;
        aclone[1] = PREVIEW_SCREEN;
        aclone[2] = RETRY_SEND_FAILED_SNAP;
        aclone[3] = RETRY_POST_FAILED_STORY;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
