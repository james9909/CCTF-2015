// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api.RequestAuthorization;
import com.snapchat.android.model.UserPrefs;

public class StaticAuthPayload
{

    public String mRequestToken;
    public String mTimestamp;
    public String mUsername;

    public StaticAuthPayload()
    {
        mTimestamp = Long.toString(System.currentTimeMillis());
        mRequestToken = RequestAuthorization.b(mTimestamp);
        mUsername = UserPrefs.k();
    }
}