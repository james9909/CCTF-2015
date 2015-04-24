// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.util.crypto.DeviceToken;
import com.snapchat.android.util.crypto.DeviceTokenManager;

// Referenced classes of package com.snapchat.android.api2:
//            StaticAuthPayload

public class GetDeviceTokenTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static class ResponsePayload
    {

        String mTokenId;
        String mTokenValue;

        public String toString()
        {
            return (new StringBuilder()).append("GetDeviceTokenTask ResponsePayload {dtoken1i=").append(mTokenId).append(", dtoken1v=").append(mTokenValue).append("}").toString();
        }

        public ResponsePayload()
        {
        }
    }


    private static final String PATH = "/loq/device_id";
    private static final String TAG = "GetDeviceTokenTask";
    private final DeviceTokenManager mDeviceTokenManager;

    public GetDeviceTokenTask()
    {
        this(DeviceTokenManager.a());
    }

    protected GetDeviceTokenTask(DeviceTokenManager devicetokenmanager)
    {
        mDeviceTokenManager = devicetokenmanager;
        a(com/snapchat/android/api2/GetDeviceTokenTask$ResponsePayload, this);
    }

    public void a(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        DeviceToken devicetoken;
        if (responsepayload != null && responsepayload.mTokenId != null && responsepayload.mTokenValue != null)
        {
            Timber.c("GetDeviceTokenTask", (new StringBuilder()).append("Received new device token from the server ").append(responsepayload).toString(), new Object[0]);
            devicetoken = new DeviceToken(responsepayload.mTokenId, responsepayload.mTokenValue);
        } else
        {
            Timber.c("GetDeviceTokenTask", (new StringBuilder()).append("GetDeviceTokenTask did not successfully return a new device token ").append(responsepayload).toString(), new Object[0]);
            devicetoken = null;
        }
        mDeviceTokenManager.a(devicetoken);
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/loq/device_id";
    }

    public StaticAuthPayload e()
    {
        return new StaticAuthPayload();
    }
}
