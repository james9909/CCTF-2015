// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            StoryCollection

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LIVE;
    public static final .VALUES LOCAL;
    public static final .VALUES RECENT_UPDATES;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        RECENT_UPDATES = new <init>("RECENT_UPDATES", 0);
        LIVE = new <init>("LIVE", 1);
        LOCAL = new <init>("LOCAL", 2);
        y_3B_.clone aclone[] = new <init>[3];
        aclone[0] = RECENT_UPDATES;
        aclone[1] = LIVE;
        aclone[2] = LOCAL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
