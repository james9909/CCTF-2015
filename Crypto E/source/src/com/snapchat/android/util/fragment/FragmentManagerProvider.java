// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.fragment;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;

public class FragmentManagerProvider
{

    public FragmentManagerProvider()
    {
    }

    public FragmentManager a(FragmentActivity fragmentactivity)
    {
        return fragmentactivity.getSupportFragmentManager();
    }
}
