// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;


// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, DeviceSyncTask

public static class mGcmRegistrationId extends AuthPayload
{

    static final String DEVICE_TYPE = "android";
    final String mGcmRegistrationId;

    (String s)
    {
        mGcmRegistrationId = s;
    }
}
