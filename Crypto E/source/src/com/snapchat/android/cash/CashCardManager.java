// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;

public class CashCardManager
{

    protected SlightlySecurePreferences a;

    protected CashCardManager()
    {
    }

    public String a()
    {
        return a.a(SlightlySecurePreferencesKeys.e);
    }

    public void a(String s)
    {
        a.a(SlightlySecurePreferencesKeys.e, s);
    }

    public void b()
    {
        a.a(SlightlySecurePreferencesKeys.e, null);
    }
}
