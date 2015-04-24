// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.media;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.android.util.memory.DynamicByteBuffer;

// Referenced classes of package com.snapchat.android.networkmanager.media:
//            MediaDownload

class SnapMediaDownload extends MediaDownload
{

    private final ReceivedSnap b;
    private final Cache c;
    private volatile ExternalStorageUnavailableException d;

    public SnapMediaDownload(ReceivedSnap receivedsnap, Cache cache)
    {
        this(DownloadManager.a(), receivedsnap, cache);
    }

    protected SnapMediaDownload(DownloadManager downloadmanager, ReceivedSnap receivedsnap, Cache cache)
    {
        super(downloadmanager);
        d = null;
        b = receivedsnap;
        c = cache;
    }

    protected boolean a(DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        if (networkresult == null)
        {
            Timber.c("SnapMediaDownload", "NetworkResult is null", new Object[0]);
            return false;
        }
        boolean flag = b instanceof StorySnap;
        if (!flag && networkresult.j() == 410)
        {
            Object aobj[] = new Object[2];
            aobj[0] = b.l();
            aobj[1] = b.d();
            Timber.b("SnapMediaDownload", "SNAP-LOG: MARKING snap from %s as viewed (HTTP-GONE) (%s)", aobj);
            b.r();
            (new ErrorMetric("SNAP_MEDIA_DOWNLOAD_410_HTTP_GONE")).c();
            return false;
        }
        if (flag && networkresult.j() == 404)
        {
            ((StorySnap)b).aG();
            StoryLibrary.a().e();
            return false;
        }
        if (!networkresult.h())
        {
            Timber.c("SnapMediaDownload", "NetworkResult was unsuccessful", new Object[0]);
            return false;
        }
        byte abyte0[];
        if (dynamicbytebuffer != null && dynamicbytebuffer.a() > 0)
        {
            abyte0 = new byte[dynamicbytebuffer.a()];
            System.arraycopy(dynamicbytebuffer.b(), 0, abyte0, 0, dynamicbytebuffer.a());
            if (!flag)
            {
                abyte0 = b.R().a(abyte0);
                if (abyte0 == null)
                {
                    Timber.e("SnapMediaDownload", "loadAndSaveData: CbcEncryptionAlgorithm decrypted null data", new Object[0]);
                    return false;
                }
            }
        } else
        {
            return false;
        }
        try
        {
            c.a(b.d(), abyte0);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            d = externalstorageunavailableexception;
            return false;
        }
        return true;
    }

    public boolean a(String s, DownloadPriority downloadpriority, DownloadPriority downloadpriority1)
    {
        boolean flag = b(s, null, downloadpriority, downloadpriority1);
        if (d != null)
        {
            throw d;
        } else
        {
            return flag;
        }
    }
}
