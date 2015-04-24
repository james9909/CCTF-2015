// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Intent;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ProfileImageCacheUpdatedEvent;
import com.snapchat.android.util.memory.Buffer;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.operation:
//            BasicScRequestOperation

public class SnapTagDownloadOperation extends BasicScRequestOperation
{
    public static class Payload extends AuthPayload
    {

        final String a;

        Payload(String s)
        {
            a = s;
        }
    }


    private final String b;

    public SnapTagDownloadOperation(Intent intent)
    {
        super(intent);
        b = intent.getStringExtra("ImageId");
    }

    public void a(NetworkResult networkresult)
    {
        Buffer buffer;
        super.a(networkresult);
        buffer = networkresult.f();
        if (buffer == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        Caches.j.a("snaptag", buffer.b(), buffer.a());
        BusProvider.a().a(new ProfileImageCacheUpdatedEvent("snaptag"));
        return;
        ExternalStorageUnavailableException externalstorageunavailableexception;
        externalstorageunavailableexception;
        Timber.e("SnapTagDownloadOperation", (new StringBuilder()).append("Failed to store the downloaded snaptag ").append(externalstorageunavailableexception).toString(), new Object[0]);
        return;
    }

    public Object b()
    {
        return new Payload(b);
    }

    public HttpMethod c()
    {
        return HttpMethod.POST;
    }

    protected String e()
    {
        return "/bq/snaptag_download";
    }
}
