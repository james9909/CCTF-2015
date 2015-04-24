// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.AsyncTask;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.network.ConnectivityUtils;

public abstract class DownloadBitmapTask extends AsyncTask
{

    private static final String TAG = "DownloadBitmapTask";
    private final String mBitmapUrl;
    public final Context mContext;
    private final MediaDownloader mMediaDownloader;

    DownloadBitmapTask(Context context, MediaDownloader mediadownloader, String s)
    {
        mContext = context;
        mMediaDownloader = mediadownloader;
        mBitmapUrl = s;
    }

    public DownloadBitmapTask(Context context, String s)
    {
        this(context, MediaDownloader.a(), s);
    }

    protected transient byte[] a(Void avoid[])
    {
        String s = ConnectivityUtils.d();
        EasyMetric easymetric = (new EasyMetric("GEOFILTER_DOWNLOAD_BITMAP")).a();
        byte abyte0[] = mMediaDownloader.a(mBitmapUrl);
        EasyMetric easymetric1 = easymetric.a("reachability", s);
        boolean flag;
        if (abyte0 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        easymetric1.a("success", Boolean.valueOf(flag)).a(false);
        return abyte0;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }
}
