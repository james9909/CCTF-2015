// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.util.memory.DynamicByteBuffer;

// Referenced classes of package com.snapchat.android.networkmanager:
//            DownloadManager, DownloadRequest

public static interface 
{

    public abstract void a(DownloadRequest downloadrequest);

    public abstract void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult);
}
