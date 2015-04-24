// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api.RequestAuthorization;
import com.snapchat.android.api2.framework.BaseRetriableScRequestTask;
import com.snapchat.android.api2.framework.ByteArrayHttpContent;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.api2.framework.StringHttpContent;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

// Referenced classes of package com.snapchat.android.discover.api:
//            SendDSnapTask

public class SendDSnapWithMediaTask extends BaseRetriableScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class RequestPayload
    {

        StringHttpContent a;
        StringHttpContent b;
        StringHttpContent c;
        StringHttpContent d;
        StringHttpContent e;
        ByteArrayHttpContent f;
        final SendDSnapWithMediaTask g;

        public RequestPayload(String s)
        {
            g = SendDSnapWithMediaTask.this;
            super();
            a = new StringHttpContent(s);
            b = new StringHttpContent(RequestAuthorization.a(s));
            c = new StringHttpContent(UserPrefs.k());
            d = new StringHttpContent(SendDSnapWithMediaTask.a(SendDSnapWithMediaTask.this).N());
            e = new StringHttpContent(Integer.toString(4));
            f = new ByteArrayHttpContent((new CbcEncryptionAlgorithm(SendDSnapWithMediaTask.a(SendDSnapWithMediaTask.this).g(), SendDSnapWithMediaTask.a(SendDSnapWithMediaTask.this).h())).a(SendDSnapWithMediaTask.b(SendDSnapWithMediaTask.this)));
        }
    }

    public static class SendDSnapException extends Exception
    {

        public SendDSnapException(String s)
        {
            super(s);
        }
    }


    private Context a;
    private DSnapbryo b;
    private com.snapchat.android.api.SendSnapTask.SendSnapCallback c;
    private AndroidNotificationManager d;
    private byte e[];

    public SendDSnapWithMediaTask(DSnapbryo dsnapbryo, com.snapchat.android.api.SendSnapTask.SendSnapCallback sendsnapcallback)
    {
        this(dsnapbryo, sendsnapcallback, Caches.a);
    }

    public SendDSnapWithMediaTask(DSnapbryo dsnapbryo, com.snapchat.android.api.SendSnapTask.SendSnapCallback sendsnapcallback, Cache cache)
    {
        a = SnapchatApplication.e();
        b = dsnapbryo;
        c = sendsnapcallback;
        d = AndroidNotificationManager.a();
        e = cache.a(dsnapbryo.N());
        if (e == null)
        {
            SnapWomb.a().d(dsnapbryo);
            throw new SendDSnapException("Snap media is no longer accessible :(");
        } else
        {
            a(java/lang/String, this);
            return;
        }
    }

    static DSnapbryo a(SendDSnapWithMediaTask senddsnapwithmediatask)
    {
        return senddsnapwithmediatask.b;
    }

    static byte[] b(SendDSnapWithMediaTask senddsnapwithmediatask)
    {
        return senddsnapwithmediatask.e;
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((String)obj, networkresult);
    }

    public void a(String s, NetworkResult networkresult)
    {
        if (networkresult.h())
        {
            l();
            return;
        } else
        {
            m();
            return;
        }
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/ph/upload";
    }

    public RequestPayload e()
    {
        return new RequestPayload(Long.toString(System.currentTimeMillis()));
    }

    protected void l()
    {
        b.a(com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADED);
        (new SendDSnapTask(b, c)).g();
    }

    protected void m()
    {
        c.d(b);
        d.a(a, false);
    }
}
