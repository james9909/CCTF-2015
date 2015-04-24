// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            ReceivedSnapAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LOAD_SNAP_BY_DEFAULT;
    public static final .VALUES LOAD_SNAP_BY_TAP;
    public static final .VALUES LOAD_STORY_SNAP_BY_DEFAULT;
    public static final .VALUES LOAD_STORY_SNAP_BY_TAP;
    public static final .VALUES UNINITIALIZED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LOAD_STORY_SNAP_BY_DEFAULT = new <init>("LOAD_STORY_SNAP_BY_DEFAULT", 0);
        LOAD_STORY_SNAP_BY_TAP = new <init>("LOAD_STORY_SNAP_BY_TAP", 1);
        LOAD_SNAP_BY_DEFAULT = new <init>("LOAD_SNAP_BY_DEFAULT", 2);
        LOAD_SNAP_BY_TAP = new <init>("LOAD_SNAP_BY_TAP", 3);
        UNINITIALIZED = new <init>("UNINITIALIZED", 4);
        t_3B_.clone aclone[] = new <init>[5];
        aclone[0] = LOAD_STORY_SNAP_BY_DEFAULT;
        aclone[1] = LOAD_STORY_SNAP_BY_TAP;
        aclone[2] = LOAD_SNAP_BY_DEFAULT;
        aclone[3] = LOAD_SNAP_BY_TAP;
        aclone[4] = UNINITIALIZED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
