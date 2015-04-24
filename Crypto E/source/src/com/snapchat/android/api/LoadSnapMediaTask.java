// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.BroadcastSnap;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.network.ConnectivityUtils;
import com.squareup.otto.Bus;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.snapchat.android.api:
//            RequestAuthorization

public class LoadSnapMediaTask extends AsyncTask
{

    public static final int DEFAULT_NUM_TO_LOAD = 3;
    private static final String TAG = "LoadSnapMediaTask";
    private final Context mContext;
    private boolean mExternalStorageUnavailable;
    private boolean mLoadSuccessful;
    private final MediaDownloader mMediaDownloader;
    private final AtomicInteger mNumExecutingLoadSnapMediaTask;
    private String mReachability;
    private final AtomicBoolean mShouldLogFirstSnap;
    private ReceivedSnap mSnap;
    private long mStartMillis;
    private User mUser;

    public LoadSnapMediaTask(ReceivedSnap receivedsnap)
    {
        this(receivedsnap, new AtomicBoolean(false), new AtomicInteger(0));
    }

    public LoadSnapMediaTask(ReceivedSnap receivedsnap, AtomicBoolean atomicboolean, AtomicInteger atomicinteger)
    {
        mMediaDownloader = MediaDownloader.a();
        mLoadSuccessful = false;
        mExternalStorageUnavailable = false;
        mSnap = receivedsnap;
        mContext = SnapchatApplication.e();
        mNumExecutingLoadSnapMediaTask = atomicinteger;
        mShouldLogFirstSnap = atomicboolean;
    }

    protected transient Void a(Void avoid[])
    {
        mUser = User.a(mContext);
        String s;
        if (mShouldLogFirstSnap.get())
        {
            mNumExecutingLoadSnapMediaTask.getAndIncrement();
        }
        s = Long.toString((new Date()).getTime());
        String s1 = RequestAuthorization.a(UserPrefs.u(), s);
        if (!(mSnap instanceof BroadcastSnap)) goto _L2; else goto _L1
_L1:
        String s2 = ((BroadcastSnap)mSnap).e();
_L4:
        if (mSnap.am())
        {
            mLoadSuccessful = mMediaDownloader.b(mSnap, s2);
            break MISSING_BLOCK_LABEL_223;
        }
        break; /* Loop/switch isn't completed */
_L2:
        s2 = (new StringBuilder()).append(DevUtils.b("/ph/blob")).append("/ph/blob?id=").append(mSnap.d()).append("&username=").append(UserPrefs.k()).append("&timestamp=").append(s).append("&req_token=").append(s1).toString();
        if (true) goto _L4; else goto _L3
_L3:
        mLoadSuccessful = mMediaDownloader.a(mSnap, s2);
        break MISSING_BLOCK_LABEL_223;
        Object obj;
        obj;
_L6:
        try
        {
            Timber.a("LoadSnapMediaTask", ((Throwable) (obj)));
            mLoadSuccessful = false;
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            mExternalStorageUnavailable = true;
        }
        break MISSING_BLOCK_LABEL_223;
        obj;
        if (true) goto _L6; else goto _L5
_L5:
        return null;
    }

    protected void a(Void void1)
    {
        if (mExternalStorageUnavailable)
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c00a4));
            mSnap.o();
        } else
        if (mLoadSuccessful)
        {
            if (mShouldLogFirstSnap.getAndSet(false))
            {
                (new EasyMetric("FIRST_SNAP_DOWNLOAD")).a("num_executing_snap_requests", Integer.valueOf(mNumExecutingLoadSnapMediaTask.getAndSet(0))).a("reachability", mReachability).a(SystemClock.elapsedRealtime() - mStartMillis).a(false);
            }
            mSnap.q();
            if (mSnap.am())
            {
                User user1 = mUser;
                com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable1[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[2];
                adatabasetable1[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.v;
                adatabasetable1[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.i;
                user1.a(adatabasetable1);
            } else
            {
                User user = mUser;
                com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[2];
                adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.v;
                adatabasetable[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.h;
                user.a(adatabasetable);
            }
        } else
        if (mSnap.F())
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c01f2));
        } else
        {
            mSnap.o();
        }
        BusProvider.a().a(new LoadSnapMediaEvent(com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType.b));
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    protected void onPreExecute()
    {
        mSnap.p();
        BusProvider.a().a(new LoadSnapMediaEvent(com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType.a));
        mStartMillis = SystemClock.elapsedRealtime();
        mReachability = ConnectivityUtils.d();
    }
}
