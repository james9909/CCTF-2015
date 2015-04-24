// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import com.snapchat.android.model.StudySettings;

public class AdManagerConfiguration
{

    StudySettings a;

    public AdManagerConfiguration()
    {
        this(StudySettings.a());
    }

    protected AdManagerConfiguration(StudySettings studysettings)
    {
        a = studysettings;
    }

    public boolean a()
    {
        return a.a("AdManager", "is_active", true);
    }

    public String b()
    {
        return a.a("AdManager", "network_code", "80247475");
    }

    public long c()
    {
        return a.a("AdManager", "ad_splash_impression_duration", 0L);
    }

    public long d()
    {
        return a.a("AdManager", "ad_page_impression_duration", 2000L);
    }

    public int e()
    {
        return a.a("AdManager", "max_outstanding_ad_requests", 100);
    }
}
