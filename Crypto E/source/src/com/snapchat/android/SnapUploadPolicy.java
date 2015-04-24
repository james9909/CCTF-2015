// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.model.StudySettings;
import com.snapchat.android.util.debug.ReleaseManager;

public class SnapUploadPolicy
{

    private ReleaseManager a;
    private StudySettings b;

    public SnapUploadPolicy()
    {
        this(StudySettings.a(), ReleaseManager.a());
    }

    protected SnapUploadPolicy(StudySettings studysettings, ReleaseManager releasemanager)
    {
        b = studysettings;
        a = releasemanager;
    }

    public boolean a()
    {
        if (!a.c() && !a.b())
        {
            return false;
        } else
        {
            return b.a("EarlyUploadSnaps", "early_upload_snaps", false);
        }
    }
}
