// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;


// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferencesKeyType

public class SlightlySecurePreferencesKey
{

    private final String a;
    private final SlightlySecurePreferencesKeyType b;

    public SlightlySecurePreferencesKey(String s, SlightlySecurePreferencesKeyType slightlysecurepreferenceskeytype)
    {
        a = s;
        b = slightlysecurepreferenceskeytype;
    }

    public String a()
    {
        return a;
    }

    public SlightlySecurePreferencesKeyType b()
    {
        return b;
    }

    public boolean c()
    {
        return b == SlightlySecurePreferencesKeyType.a;
    }

    public boolean d()
    {
        return b == SlightlySecurePreferencesKeyType.b;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof SlightlySecurePreferencesKey))
        {
            return false;
        } else
        {
            SlightlySecurePreferencesKey slightlysecurepreferenceskey = (SlightlySecurePreferencesKey)obj;
            return a.equals(slightlysecurepreferenceskey.a());
        }
    }

    public int hashCode()
    {
        return a.hashCode();
    }
}
