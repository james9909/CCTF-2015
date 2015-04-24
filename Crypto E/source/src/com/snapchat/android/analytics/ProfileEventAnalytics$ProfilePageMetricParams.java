// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.util.EnumUtils;

// Referenced classes of package com.snapchat.android.analytics:
//            ProfileEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONTACT_INFO;
    public static final .VALUES CONTACT_NAME;
    public static final .VALUES DISPLAY_NAME;
    public static final .VALUES FRIEND;
    public static final .VALUES IN_MY_CONTACTS;
    public static final .VALUES PAGE;
    public static final .VALUES REASON;
    public static final .VALUES SOURCE;
    public static final .VALUES STATUS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public String a()
    {
        return EnumUtils.a(this);
    }

    static 
    {
        DISPLAY_NAME = new <init>("DISPLAY_NAME", 0);
        FRIEND = new <init>("FRIEND", 1);
        STATUS = new <init>("STATUS", 2);
        REASON = new <init>("REASON", 3);
        PAGE = new <init>("PAGE", 4);
        SOURCE = new <init>("SOURCE", 5);
        CONTACT_NAME = new <init>("CONTACT_NAME", 6);
        CONTACT_INFO = new <init>("CONTACT_INFO", 7);
        IN_MY_CONTACTS = new <init>("IN_MY_CONTACTS", 8);
        s_3B_.clone aclone[] = new <init>[9];
        aclone[0] = DISPLAY_NAME;
        aclone[1] = FRIEND;
        aclone[2] = STATUS;
        aclone[3] = REASON;
        aclone[4] = PAGE;
        aclone[5] = SOURCE;
        aclone[6] = CONTACT_NAME;
        aclone[7] = CONTACT_INFO;
        aclone[8] = IN_MY_CONTACTS;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
