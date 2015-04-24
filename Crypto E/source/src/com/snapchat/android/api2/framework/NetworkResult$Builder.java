// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.memory.Buffer;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api2.framework:
//            NetworkResult

public static class mNetworkType
{

    private Buffer mBuffer;
    private Exception mCaughtException;
    private String mNetworkType;
    private int mResponseCode;
    private Map mResponseHeaders;
    private String mResponseMessage;
    private final String mUrl;

    public mNetworkType a(int i)
    {
        mResponseCode = i;
        return this;
    }

    public mResponseCode a(Buffer buffer)
    {
        mBuffer = buffer;
        return this;
    }

    public mBuffer a(Exception exception)
    {
        mCaughtException = exception;
        return this;
    }

    public mCaughtException a(String s)
    {
        mResponseMessage = s;
        return this;
    }

    public mResponseMessage a(Map map)
    {
        mResponseHeaders = map;
        return this;
    }

    public NetworkResult a()
    {
        return new NetworkResult(mUrl, mNetworkType, mResponseCode, mResponseMessage, mBuffer, mResponseHeaders, mCaughtException, null);
    }

    public (String s, String s1)
    {
        mResponseHeaders = new HashMap();
        mUrl = s;
        mNetworkType = s1;
    }
}
