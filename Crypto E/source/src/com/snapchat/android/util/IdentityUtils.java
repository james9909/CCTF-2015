// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.TextUtils;
import com.snapchat.android.model.UserPrefs;

public class IdentityUtils
{

    private UserPrefs a;

    public IdentityUtils()
    {
        this(UserPrefs.a());
    }

    public IdentityUtils(UserPrefs userprefs)
    {
        a = userprefs;
    }

    public boolean a()
    {
        return b() || c();
    }

    public boolean b()
    {
        return TextUtils.isEmpty(UserPrefs.f());
    }

    public boolean c()
    {
        return TextUtils.isEmpty(UserPrefs.v()) || !a.aJ() || !TextUtils.isEmpty(a.aL());
    }
}
