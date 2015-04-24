// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.util.memory.Buffer;

public class MediaDownloadTask extends HyperRequestTask
{

    private final Buffer mResponseBuffer;
    private final String mUrl;

    public MediaDownloadTask(String s, Buffer buffer)
    {
        mUrl = s;
        mResponseBuffer = buffer;
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    public Buffer f_()
    {
        return mResponseBuffer;
    }

    public String m_()
    {
        return mUrl;
    }
}
