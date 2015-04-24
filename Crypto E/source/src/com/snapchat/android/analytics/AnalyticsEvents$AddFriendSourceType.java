// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            AnalyticsEvents

public static final class mAddSourceType extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADDED_ME_BACK;
    public static final .VALUES CONTACTS;
    public static final .VALUES QR_CODE;
    public static final .VALUES USERNAME;
    private final com.snapchat.android.model.ype mAddSourceType;

    public static mAddSourceType valueOf(String s)
    {
        return (mAddSourceType)Enum.valueOf(com/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType, s);
    }

    public static mAddSourceType[] values()
    {
        return (mAddSourceType[])$VALUES.clone();
    }

    public com.snapchat.android.model.ype a()
    {
        return mAddSourceType;
    }

    static 
    {
        CONTACTS = new <init>("CONTACTS", 0, com.snapchat.android.model.ype);
        USERNAME = new <init>("USERNAME", 1, com.snapchat.android.model.ME);
        QR_CODE = new <init>("QR_CODE", 2, com.snapchat.android.model.E);
        ADDED_ME_BACK = new <init>("ADDED_ME_BACK", 3, com.snapchat.android.model.ME_BACK);
        mAddSourceType amaddsourcetype[] = new ACK[4];
        amaddsourcetype[0] = CONTACTS;
        amaddsourcetype[1] = USERNAME;
        amaddsourcetype[2] = QR_CODE;
        amaddsourcetype[3] = ADDED_ME_BACK;
        $VALUES = amaddsourcetype;
    }

    private (String s, int i, com.snapchat.android.model.ype ype)
    {
        super(s, i);
        mAddSourceType = ype;
    }
}
