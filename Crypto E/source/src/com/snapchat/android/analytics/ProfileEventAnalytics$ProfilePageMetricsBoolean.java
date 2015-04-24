// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            ProfileEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES No;
    public static final .VALUES Yes;

    public static  a(boolean flag)
    {
        if (flag)
        {
            return Yes;
        } else
        {
            return No;
        }
    }

    public static No valueOf(String s)
    {
        return (No)Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean, s);
    }

    public static No[] values()
    {
        return (No[])$VALUES.clone();
    }

    static 
    {
        Yes = new <init>("Yes", 0);
        No = new <init>("No", 1);
        n_3B_.clone aclone[] = new <init>[2];
        aclone[0] = Yes;
        aclone[1] = No;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
