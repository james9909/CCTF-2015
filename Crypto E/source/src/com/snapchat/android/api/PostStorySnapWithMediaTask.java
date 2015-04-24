// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.camera.transcoding.VideoTranscoder;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.cache.SendSnapCacheWrapper;

// Referenced classes of package com.snapchat.android.api:
//            PostStorySnapTask

public class PostStorySnapWithMediaTask extends PostStorySnapTask
{

    private static final String TASK_NAME = "PostStorySnapWithMediaTask";
    private byte mData[];
    private final SnapWomb mSnapWomb;
    private final VideoTranscoder mVideoTranscoder;

    public PostStorySnapWithMediaTask(AnnotatedMediabryo annotatedmediabryo, PostStorySnapTask.PostStorySnapCallback poststorysnapcallback)
    {
        this(annotatedmediabryo, poststorysnapcallback, SnapWomb.a(), VideoTranscoder.a());
    }

    protected PostStorySnapWithMediaTask(AnnotatedMediabryo annotatedmediabryo, PostStorySnapTask.PostStorySnapCallback poststorysnapcallback, SnapWomb snapwomb, VideoTranscoder videotranscoder)
    {
        super(annotatedmediabryo, poststorysnapcallback);
        mSnapWomb = snapwomb;
        mVideoTranscoder = videotranscoder;
    }

    protected transient ServerResponse a(String as[])
    {
        if (SnapUtils.a(mSnapbryo) && (mSnapbryo instanceof SnapVideobryo))
        {
            SnapVideobryo snapvideobryo = (SnapVideobryo)mSnapbryo;
            if (snapvideobryo.W())
            {
                try
                {
                    if (!mVideoTranscoder.c(snapvideobryo))
                    {
                        mSnapWomb.d(mSnapbryo);
                    }
                }
                catch (Exception exception)
                {
                    Timber.e("PostStorySnapWithMediaTask", exception.getMessage(), new Object[0]);
                }
            }
        }
        mData = SendSnapCacheWrapper.a().a(mSnapbryo);
        if (mData != null)
        {
            mNetworkAnalytics.a(mData.length);
        }
        if (isCancelled())
        {
            return null;
        } else
        {
            return super.a(as);
        }
    }

    protected String a()
    {
        return "/bq/retry_post_story";
    }

    protected void a(ServerResponse serverresponse)
    {
        if (mData == null)
        {
            mSnapWomb.d(mSnapbryo);
            AlertDialogUtils.a(0x7f0c0202, mContext);
            cancel(true);
        }
        super.a(serverresponse);
    }

    protected void a(String s, int i)
    {
        if (!mSnapbryo.P())
        {
            mSnapbryo.e(true);
            (new PostStorySnapWithMediaTask(mSnapbryo, mPostStorySnapCallback, mSnapWomb, mVideoTranscoder)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        } else
        {
            mPostStorySnapCallback.b(mSnapbryo);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = super.b();
        bundle.putByteArray("data", mData);
        return bundle;
    }

    protected String c()
    {
        return "PostStorySnapWithMediaTask";
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
