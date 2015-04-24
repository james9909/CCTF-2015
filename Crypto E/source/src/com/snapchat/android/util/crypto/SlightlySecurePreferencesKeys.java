// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;


// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferencesKey, SlightlySecurePreferencesKeyType

public class SlightlySecurePreferencesKeys
{

    public static final SlightlySecurePreferencesKey a;
    public static final SlightlySecurePreferencesKey b;
    public static final SlightlySecurePreferencesKey c;
    public static final SlightlySecurePreferencesKey d;
    public static final SlightlySecurePreferencesKey e;
    public static final SlightlySecurePreferencesKey f;
    public static final SlightlySecurePreferencesKey g;

    public SlightlySecurePreferencesKeys()
    {
    }

    static 
    {
        a = new SlightlySecurePreferencesKey("messagingGatewayInfo", SlightlySecurePreferencesKeyType.a);
        b = new SlightlySecurePreferencesKey("perConversationAuth/", SlightlySecurePreferencesKeyType.a);
        c = new SlightlySecurePreferencesKey("myStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.a);
        d = new SlightlySecurePreferencesKey("friendStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.a);
        e = new SlightlySecurePreferencesKey("creditCardToken", SlightlySecurePreferencesKeyType.b);
        f = new SlightlySecurePreferencesKey("sqAuthToken", SlightlySecurePreferencesKeyType.a);
        g = new SlightlySecurePreferencesKey("deviceToken1KeyAndIv", SlightlySecurePreferencesKeyType.c);
    }
}
