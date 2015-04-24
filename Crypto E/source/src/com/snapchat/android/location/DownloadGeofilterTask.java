// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.api.DownloadBitmapTask;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;

// Referenced classes of package com.snapchat.android.location:
//            GeofilterImageManager

class DownloadGeofilterTask extends DownloadBitmapTask
{

    private final String a;
    private final Geofilter b;
    private final GeofilterImageManager c;
    private final Cache d;

    DownloadGeofilterTask(Context context, String s, Geofilter geofilter, GeofilterImageManager geofilterimagemanager, Cache cache)
    {
        super(context, s);
        a = s;
        b = geofilter;
        c = geofilterimagemanager;
        d = cache;
    }

    protected void a(byte abyte0[])
    {
        super.onPostExecute(abyte0);
        if (abyte0 == null)
        {
            Timber.e("DownloadGeofilterTask", (new StringBuilder()).append("Data for ").append(a).append(" was null ").toString(), new Object[0]);
            c.a(a);
            return;
        }
        android.graphics.Bitmap bitmap;
        try
        {
            d.a(a, abyte0);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.a("DownloadGeofilterTask", externalstorageunavailableexception);
        }
        bitmap = SnapMediaUtils.a(mContext, abyte0);
        if (bitmap == null)
        {
            Timber.c("DownloadGeofilterTask", (new StringBuilder()).append("Bitmap for ").append(a).append(" was null").toString(), new Object[0]);
            c.a(a);
            return;
        } else
        {
            b.a(bitmap);
            c.a(a);
            return;
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((byte[])obj);
    }
}
