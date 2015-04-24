// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADD_FRIENDS;
    public static final .VALUES REGISTER_ADD_FRIENDS;
    public static final .VALUES SEND;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        REGISTER_ADD_FRIENDS = new <init>("REGISTER_ADD_FRIENDS", 0);
        ADD_FRIENDS = new <init>("ADD_FRIENDS", 1);
        SEND = new <init>("SEND", 2);
        t_3B_.clone aclone[] = new <init>[3];
        aclone[0] = REGISTER_ADD_FRIENDS;
        aclone[1] = ADD_FRIENDS;
        aclone[2] = SEND;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
