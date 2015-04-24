// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            PhoneVerificationAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES REGISTERED_NUMBER;
    public static final .VALUES VERIFIED_NEW_NUMBER;
    public static final .VALUES VERIFIED_NUMBER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        REGISTERED_NUMBER = new <init>("REGISTERED_NUMBER", 0);
        VERIFIED_NUMBER = new <init>("VERIFIED_NUMBER", 1);
        VERIFIED_NEW_NUMBER = new <init>("VERIFIED_NEW_NUMBER", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = REGISTERED_NUMBER;
        aclone[1] = VERIFIED_NUMBER;
        aclone[2] = VERIFIED_NEW_NUMBER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
