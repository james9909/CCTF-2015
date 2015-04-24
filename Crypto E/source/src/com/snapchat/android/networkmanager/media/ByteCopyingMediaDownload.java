// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.media;

import android.os.Bundle;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.memory.DynamicByteBuffer;

// Referenced classes of package com.snapchat.android.networkmanager.media:
//            MediaDownload

public class ByteCopyingMediaDownload extends MediaDownload
{

    private volatile byte b[];

    public ByteCopyingMediaDownload()
    {
        this(DownloadManager.a());
    }

    protected ByteCopyingMediaDownload(DownloadManager downloadmanager)
    {
        super(downloadmanager);
    }

    protected boolean a(DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        boolean flag = false;
        if (dynamicbytebuffer != null)
        {
            b = new byte[dynamicbytebuffer.a()];
            System.arraycopy(dynamicbytebuffer.b(), 0, b, 0, dynamicbytebuffer.a());
            flag = true;
        }
        return flag;
    }

    public byte[] a(String s, Bundle bundle, DownloadPriority downloadpriority, DownloadPriority downloadpriority1)
    {
        if (b(s, bundle, downloadpriority, downloadpriority1))
        {
            return b;
        } else
        {
            return null;
        }
    }
}
