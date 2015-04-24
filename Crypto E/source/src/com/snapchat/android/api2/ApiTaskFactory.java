// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.util.memory.Buffer;

// Referenced classes of package com.snapchat.android.api2:
//            GetDeviceTokenTask, MediaDownloadTask

public class ApiTaskFactory
{

    public ApiTaskFactory()
    {
    }

    public GetDeviceTokenTask a()
    {
        return new GetDeviceTokenTask();
    }

    public MediaDownloadTask a(String s, Buffer buffer)
    {
        return new MediaDownloadTask(s, buffer);
    }
}
