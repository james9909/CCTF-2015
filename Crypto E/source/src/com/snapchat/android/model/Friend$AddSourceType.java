// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.text.TextUtils;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.model:
//            Friend

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADDED_BY_ADDED_ME_BACK;
    public static final .VALUES ADDED_BY_PHONE;
    public static final .VALUES ADDED_BY_QR_CODE;
    public static final .VALUES ADDED_BY_USERNAME;
    public static final .VALUES UNKNOWN;

    public static  a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_43;
        }
          = valueOf(s);
        return ;
        Exception exception;
        exception;
        Timber.e("Friend", (new StringBuilder()).append("Invalid enum for AddSourceType ").append(exception).toString(), new Object[0]);
        return UNKNOWN;
    }

    public static UNKNOWN valueOf(String s)
    {
        return (UNKNOWN)Enum.valueOf(com/snapchat/android/model/Friend$AddSourceType, s);
    }

    public static UNKNOWN[] values()
    {
        return (UNKNOWN[])$VALUES.clone();
    }

    public String a()
    {
        return name();
    }

    static 
    {
        ADDED_BY_PHONE = new <init>("ADDED_BY_PHONE", 0);
        ADDED_BY_USERNAME = new <init>("ADDED_BY_USERNAME", 1);
        ADDED_BY_QR_CODE = new <init>("ADDED_BY_QR_CODE", 2);
        ADDED_BY_ADDED_ME_BACK = new <init>("ADDED_BY_ADDED_ME_BACK", 3);
        UNKNOWN = new <init>("UNKNOWN", 4);
        name aname[] = new <init>[5];
        aname[0] = ADDED_BY_PHONE;
        aname[1] = ADDED_BY_USERNAME;
        aname[2] = ADDED_BY_QR_CODE;
        aname[3] = ADDED_BY_ADDED_ME_BACK;
        aname[4] = UNKNOWN;
        $VALUES = aname;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
