// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import com.snapchat.android.model.StudySettings;

// Referenced classes of package com.snapchat.android.api:
//            ServerSideFeatures

public static class mABTestForFeature
{

    private nValue mABTestForFeature;
    private String mFeatureName;
    private boolean mOnByDefault;

    String a()
    {
        return mFeatureName;
    }

    boolean a(StudySettings studysettings)
    {
        if (mABTestForFeature == null)
        {
            return mOnByDefault;
        }
        String s = studysettings.a(mABTestForFeature.tudyId, mABTestForFeature.ariable, null);
        return s != null && s.equals(mABTestForFeature.nValue);
    }

    (String s,  )
    {
        this(s, false, );
    }

    <init>(String s, boolean flag)
    {
        this(s, flag, null);
    }

    <init>(String s, boolean flag, <init> <init>1)
    {
        mFeatureName = s;
        mOnByDefault = flag;
        mABTestForFeature = <init>1;
    }
}
