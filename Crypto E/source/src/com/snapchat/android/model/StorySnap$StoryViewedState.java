// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            StorySnap

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES RELEASED_BEFORE_TIMER_EXPIRED;
    public static final .VALUES TAPPED_TO_SKIP;
    public static final .VALUES TIMER_EXPIRED;
    public static final .VALUES UNVIEWED;
    public static final .VALUES VIEWING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/StorySnap$StoryViewedState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNVIEWED = new <init>("UNVIEWED", 0);
        VIEWING = new <init>("VIEWING", 1);
        RELEASED_BEFORE_TIMER_EXPIRED = new <init>("RELEASED_BEFORE_TIMER_EXPIRED", 2);
        TIMER_EXPIRED = new <init>("TIMER_EXPIRED", 3);
        TAPPED_TO_SKIP = new <init>("TAPPED_TO_SKIP", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = UNVIEWED;
        aclone[1] = VIEWING;
        aclone[2] = RELEASED_BEFORE_TIMER_EXPIRED;
        aclone[3] = TIMER_EXPIRED;
        aclone[4] = TAPPED_TO_SKIP;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
