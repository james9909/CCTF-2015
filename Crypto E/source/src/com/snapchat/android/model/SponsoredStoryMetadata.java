// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


public class SponsoredStoryMetadata
{

    private String mPostviewDisplayName;
    private String mPreviewDisplayName;
    private String mSponsor;
    private String mThirdPartyTrackingUrl;

    public SponsoredStoryMetadata()
    {
    }

    public SponsoredStoryMetadata(String s, String s1, String s2, String s3)
    {
        mPreviewDisplayName = s;
        mPostviewDisplayName = s1;
        mSponsor = s2;
        mThirdPartyTrackingUrl = s3;
    }

    public String a()
    {
        return mPreviewDisplayName;
    }

    public String b()
    {
        return mPostviewDisplayName;
    }

    public String c()
    {
        return mSponsor;
    }

    public String d()
    {
        return mThirdPartyTrackingUrl;
    }
}
