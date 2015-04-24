// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;


public final class SlightlySecurePreferencesKeyType extends Enum
{

    public static final SlightlySecurePreferencesKeyType a;
    public static final SlightlySecurePreferencesKeyType b;
    public static final SlightlySecurePreferencesKeyType c;
    private static final SlightlySecurePreferencesKeyType d[];

    private SlightlySecurePreferencesKeyType(String s, int i)
    {
        super(s, i);
    }

    public static SlightlySecurePreferencesKeyType valueOf(String s)
    {
        return (SlightlySecurePreferencesKeyType)Enum.valueOf(com/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType, s);
    }

    public static SlightlySecurePreferencesKeyType[] values()
    {
        return (SlightlySecurePreferencesKeyType[])d.clone();
    }

    static 
    {
        a = new SlightlySecurePreferencesKeyType("SHOULD_PURGE_ON_LOGOUT", 0);
        b = new SlightlySecurePreferencesKeyType("SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN", 1);
        c = new SlightlySecurePreferencesKeyType("SHOULD_ALWAYS_PERSIST", 2);
        SlightlySecurePreferencesKeyType aslightlysecurepreferenceskeytype[] = new SlightlySecurePreferencesKeyType[3];
        aslightlysecurepreferenceskeytype[0] = a;
        aslightlysecurepreferenceskeytype[1] = b;
        aslightlysecurepreferenceskeytype[2] = c;
        d = aslightlysecurepreferenceskeytype;
    }
}
