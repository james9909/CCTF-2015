// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class DeviceSyncTask extends BasicScRequestTask
{
    public static class Payload extends AuthPayload
    {

        static final String DEVICE_TYPE = "android";
        final String mGcmRegistrationId;

        Payload(String s)
        {
            mGcmRegistrationId = s;
        }
    }


    private static final String TAG = "DeviceSyncTask";
    private final String mGcmRegistrationId;

    public DeviceSyncTask(String s)
    {
        mGcmRegistrationId = s;
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.h())
        {
            Timber.c("DeviceSyncTask", "DeviceSyncTask succeeded.", new Object[0]);
            a(mGcmRegistrationId);
            return;
        } else
        {
            Timber.c("DeviceSyncTask", (new StringBuilder()).append("DeviceSyncTask failed: ").append(networkresult.d()).toString(), new Object[0]);
            return;
        }
    }

    void a(String s)
    {
        UserPrefs.e(s);
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/ph/device";
    }

    public Payload e()
    {
        return new Payload(mGcmRegistrationId);
    }
}
