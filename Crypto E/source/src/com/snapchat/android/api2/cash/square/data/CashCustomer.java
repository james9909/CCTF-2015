// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square.data;


public class CashCustomer
{
    public static final class Role extends Enum
    {

        private static final Role $VALUES[];
        public static final Role RECIPIENT;
        public static final Role SENDER;

        public static Role valueOf(String s)
        {
            return (Role)Enum.valueOf(com/snapchat/android/api2/cash/square/data/CashCustomer$Role, s);
        }

        public static Role[] values()
        {
            return (Role[])$VALUES.clone();
        }

        static 
        {
            RECIPIENT = new Role("RECIPIENT", 0);
            SENDER = new Role("SENDER", 1);
            Role arole[] = new Role[2];
            arole[0] = RECIPIENT;
            arole[1] = SENDER;
            $VALUES = arole;
        }

        private Role(String s, int i)
        {
            super(s, i);
        }
    }


    private final String mEmail;
    private final String mId;
    private final String mPhoneNumber;

    public CashCustomer(String s, String s1, String s2)
    {
        mId = s;
        mEmail = s1;
        mPhoneNumber = s2;
    }

    public String a()
    {
        return mId;
    }

    public String b()
    {
        return mEmail;
    }

    public String c()
    {
        return mPhoneNumber;
    }
}
