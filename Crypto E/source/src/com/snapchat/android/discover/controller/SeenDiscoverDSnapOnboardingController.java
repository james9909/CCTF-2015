// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;

public class SeenDiscoverDSnapOnboardingController
{

    private static SeenDiscoverDSnapOnboardingController b = new SeenDiscoverDSnapOnboardingController();
    private volatile boolean a;
    private final SharedPreferences c;

    private SeenDiscoverDSnapOnboardingController()
    {
        this(PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()));
    }

    protected SeenDiscoverDSnapOnboardingController(SharedPreferences sharedpreferences)
    {
        c = sharedpreferences;
        b();
    }

    public static SeenDiscoverDSnapOnboardingController a()
    {
        return b;
    }

    protected void b()
    {
        a = c.getBoolean(SharedPreferenceKey.bd.a(), false);
    }

    public boolean c()
    {
        return a;
    }

    public void d()
    {
        a = true;
        e();
    }

    protected void e()
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean(SharedPreferenceKey.bd.a(), a);
        editor.apply();
    }

}
