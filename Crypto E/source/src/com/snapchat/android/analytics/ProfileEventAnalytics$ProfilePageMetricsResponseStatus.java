// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            ProfileEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAIL;
    public static final .VALUES SUCCESS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SUCCESS = new <init>("SUCCESS", 0);
        FAIL = new <init>("FAIL", 1);
        s_3B_.clone aclone[] = new <init>[2];
        aclone[0] = SUCCESS;
        aclone[1] = FAIL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
