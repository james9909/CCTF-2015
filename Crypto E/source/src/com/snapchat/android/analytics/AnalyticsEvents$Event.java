// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES SYNC_ALL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$Event, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SYNC_ALL = new <init>("SYNC_ALL", 0);
        t_3B_.clone aclone[] = new <init>[1];
        aclone[0] = SYNC_ALL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
