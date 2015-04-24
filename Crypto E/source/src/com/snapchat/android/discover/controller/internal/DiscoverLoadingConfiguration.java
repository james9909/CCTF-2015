// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import com.snapchat.android.model.StudySettings;

public class DiscoverLoadingConfiguration
{

    private final StudySettings a;

    public DiscoverLoadingConfiguration()
    {
        this(StudySettings.a());
    }

    protected DiscoverLoadingConfiguration(StudySettings studysettings)
    {
        a = studysettings;
    }

    public int a()
    {
        return a.a("DISCOVER", "WIFI_RECENT_USER_THRESHOLD_HOURS", 72);
    }

    public int b()
    {
        return a.a("DISCOVER", "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD", 1);
    }

    public int c()
    {
        return a.a("DISCOVER", "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS", 72);
    }

    public int d()
    {
        return a.a("DISCOVER", "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 4);
    }

    public int e()
    {
        return a.a("DISCOVER", "WAN_RECENT_CHANNEL_THRESHOLD_HOURS", 48);
    }

    public int f()
    {
        return a.a("DISCOVER", "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD", 1);
    }

    public int g()
    {
        return a.a("DISCOVER", "WAN_NUM_DSNAPS_TO_LOAD_BEFORE_CURRENT", 1);
    }

    public int h()
    {
        return a.a("DISCOVER", "WAN_NUM_DSNAPS_TO_LOAD_AFTER_CURRENT", 2);
    }
}
