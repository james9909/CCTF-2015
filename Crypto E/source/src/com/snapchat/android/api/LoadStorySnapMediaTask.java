// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.analytics.ReceivedSnapAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.LoadStoryMediaCompleteEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StoriesNotifyDatasetChangedEvent;
import com.snapchat.android.util.network.ConnectivityUtils;
import com.squareup.otto.Bus;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class LoadStorySnapMediaTask extends AsyncTask
{

    public static final int MAX_NUM_LIVE_STORIES_TO_LOAD_ON_APP_OPEN = 2;
    public static final int MAX_NUM_RECENT_UPDATES_TO_LOAD_ON_APP_OPEN = 3;
    public static final int NUM_TO_LOAD_BEFORE_ALLOWING_VIEWING = 3;
    public static final int NUM_TO_LOAD_ON_TAP = 3;
    public static final int NUM_TO_START_LOADING_AHEAD_ON_VIEW = 7;
    private boolean mExternalStorageUnavailable;
    private boolean mLoadSuccessful;
    private final MediaDownloader mMediaDownloader;
    private final AtomicInteger mNumExecutingLoadStorySnapMediaTask;
    private String mReachability;
    private final AtomicBoolean mShouldLogFirstStory;
    private long mStartMillis;
    private StorySnap mStorySnap;
    private boolean mToastOnNoConnection;
    private User mUser;

    public LoadStorySnapMediaTask(StorySnap storysnap)
    {
        this(storysnap, false);
    }

    public LoadStorySnapMediaTask(StorySnap storysnap, boolean flag)
    {
        this(storysnap, flag, new AtomicBoolean(false), new AtomicInteger(0));
    }

    public LoadStorySnapMediaTask(StorySnap storysnap, boolean flag, AtomicBoolean atomicboolean, AtomicInteger atomicinteger)
    {
        mLoadSuccessful = false;
        mExternalStorageUnavailable = false;
        mMediaDownloader = MediaDownloader.a();
        mStorySnap = storysnap;
        mUser = User.c();
        mToastOnNoConnection = flag;
        mNumExecutingLoadStorySnapMediaTask = atomicinteger;
        mShouldLogFirstStory = atomicboolean;
    }

    protected transient Void a(Void avoid[])
    {
label0:
        {
            if (mShouldLogFirstStory.get())
            {
                mNumExecutingLoadStorySnapMediaTask.getAndIncrement();
            }
            if (mStorySnap.am())
            {
                mLoadSuccessful = mMediaDownloader.c(mStorySnap, mStorySnap.ax());
                break label0;
            }
            try
            {
                mLoadSuccessful = mMediaDownloader.b(mStorySnap, mStorySnap.ax());
            }
            catch (ExternalStorageUnavailableException externalstorageunavailableexception)
            {
                mExternalStorageUnavailable = true;
            }
        }
        return null;
    }

    protected void a(Void void1)
    {
        if (!mExternalStorageUnavailable) goto _L2; else goto _L1
_L1:
        mStorySnap.o();
_L4:
        BusProvider.a().a(new LoadStoryMediaCompleteEvent());
        BusProvider.a().a(new StoriesNotifyDatasetChangedEvent());
        return;
_L2:
        if (mLoadSuccessful)
        {
            String s = mStorySnap.ax();
            if (!TextUtils.isEmpty(s) && s.contains("/bq/story_blob"))
            {
                ReceivedSnapAnalytics receivedsnapanalytics = new ReceivedSnapAnalytics();
                receivedsnapanalytics.a(mStorySnap.Q());
                receivedsnapanalytics.a(mStartMillis, mReachability);
            }
            if (mShouldLogFirstStory.getAndSet(false))
            {
                (new EasyMetric("FIRST_STORY_DOWNLOAD")).a("num_executing_story_requests", Integer.valueOf(mNumExecutingLoadStorySnapMediaTask.getAndSet(0))).a("reachability", mReachability).a(SystemClock.elapsedRealtime() - mStartMillis).a(false);
            }
            mStorySnap.q();
            mUser.H();
        } else
        if (!mStorySnap.aH())
        {
            mStorySnap.o();
            if (mToastOnNoConnection)
            {
                BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0171));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
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
        mStorySnap.p();
        BusProvider.a().a(new StoriesNotifyDatasetChangedEvent());
        mStartMillis = SystemClock.elapsedRealtime();
        mReachability = ConnectivityUtils.d();
    }
}
