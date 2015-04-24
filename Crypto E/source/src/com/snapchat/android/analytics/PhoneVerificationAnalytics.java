// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.util.EnumUtils;

public class PhoneVerificationAnalytics
{
    public static final class VerificationType extends Enum
    {

        private static final VerificationType $VALUES[];
        public static final VerificationType REGISTERED_NUMBER;
        public static final VerificationType VERIFIED_NEW_NUMBER;
        public static final VerificationType VERIFIED_NUMBER;

        public static VerificationType valueOf(String s)
        {
            return (VerificationType)Enum.valueOf(com/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType, s);
        }

        public static VerificationType[] values()
        {
            return (VerificationType[])$VALUES.clone();
        }

        static 
        {
            REGISTERED_NUMBER = new VerificationType("REGISTERED_NUMBER", 0);
            VERIFIED_NUMBER = new VerificationType("VERIFIED_NUMBER", 1);
            VERIFIED_NEW_NUMBER = new VerificationType("VERIFIED_NEW_NUMBER", 2);
            VerificationType averificationtype[] = new VerificationType[3];
            averificationtype[0] = REGISTERED_NUMBER;
            averificationtype[1] = VERIFIED_NUMBER;
            averificationtype[2] = VERIFIED_NEW_NUMBER;
            $VALUES = averificationtype;
        }

        private VerificationType(String s, int i)
        {
            super(s, i);
        }
    }


    public PhoneVerificationAnalytics()
    {
    }

    public static void a(VerificationType verificationtype)
    {
        (new EasyMetric("FORCE_PHONE_VERIFICATION_SUCCESS")).a("result", EnumUtils.a(verificationtype)).c();
    }

    public static void a(boolean flag, boolean flag1)
    {
        int i = 1;
        EasyMetric easymetric = new EasyMetric("FORCE_PHONE_VERIFICATION_ALERT_SHOWN");
        int j;
        EasyMetric easymetric1;
        if (flag)
        {
            j = 0;
        } else
        {
            j = i;
        }
        easymetric1 = easymetric.a("selected_verify_number", Integer.valueOf(j));
        if (!flag1)
        {
            i = 0;
        }
        easymetric1.a("already_has_number", Integer.valueOf(i)).c();
    }
}
