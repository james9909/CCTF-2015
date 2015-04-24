// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.camera.transcoding.VideoTranscoder;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.SendSnapCacheWrapper;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class UploadMediaTask extends RequestTask
{
    public class UploadMediaException extends Exception
    {

        final UploadMediaTask this$0;

        public UploadMediaException(String s)
        {
            this$0 = UploadMediaTask.this;
            super(s);
        }
    }


    private static final String TASK_NAME = "UploadMediaTask";
    public byte mData[];
    protected int mDataLength;
    private final SnapWomb mSnapWomb;
    public AnnotatedMediabryo mSnapbryo;
    protected User mUser;
    private final VideoTranscoder mVideoTranscoder;

    public UploadMediaTask(AnnotatedMediabryo annotatedmediabryo)
    {
        this(annotatedmediabryo, SnapWomb.a(), VideoTranscoder.a());
    }

    protected UploadMediaTask(AnnotatedMediabryo annotatedmediabryo, SnapWomb snapwomb, VideoTranscoder videotranscoder)
    {
        mUser = User.c();
        mSnapbryo = annotatedmediabryo;
        mSnapWomb = snapwomb;
        mVideoTranscoder = videotranscoder;
    }

    private void l()
    {
        if (!mSnapbryo.i() && !mSnapbryo.p())
        {
            break MISSING_BLOCK_LABEL_34;
        }
        (new SendSnapController()).e(mSnapbryo);
        return;
        Object obj;
        obj;
_L2:
        (new ErrorMetric(((Exception) (obj)).getMessage())).a(((Throwable) (obj))).c();
        return;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected transient ServerResponse a(String as[])
    {
        k();
        a(SendSnapCacheWrapper.a().a(mSnapbryo));
        if (mData == null)
        {
            mSnapWomb.d(mSnapbryo);
        }
        mSnapbryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADING);
        return super.a(as);
    }

    public String a()
    {
        return "/ph/upload";
    }

    public void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
    }

    public void a(String s, int i)
    {
        if (mSnapbryo.J() != com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
        {
            if (!mSnapbryo.P())
            {
                mSnapbryo.e(true);
                (new UploadMediaTask(mSnapbryo, mSnapWomb, mVideoTranscoder)).executeOnExecutor(ScExecutors.b, new String[0]);
            } else
            {
                mSnapbryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.FAILED);
                l();
            }
            if (g() == 413)
            {
                ErrorMetric errormetric = new ErrorMetric("413 REQUEST_ENTITY_TOO_LARGE");
                errormetric.a("filter", mSnapbryo.t());
                errormetric.a("size", Integer.valueOf(mDataLength));
                errormetric.a("type", Integer.valueOf(mSnapbryo.b()));
                errormetric.c();
                return;
            }
        }
    }

    protected void a(byte abyte0[])
    {
        mData = abyte0;
        int i;
        if (mData == null)
        {
            i = 0;
        } else
        {
            i = mData.length;
        }
        mDataLength = i;
    }

    public Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("media_id", mSnapbryo.N());
        if (mSnapbryo instanceof DSnapbryo)
        {
            bundle.putString("type", Integer.toString(4));
            bundle.putByteArray("data", (new CbcEncryptionAlgorithm(mSnapbryo.g(), mSnapbryo.h())).a(mData));
            return bundle;
        } else
        {
            bundle.putString("type", Integer.toString(mSnapbryo.b()));
            bundle.putByteArray("data", mData);
            return bundle;
        }
    }

    public void b(ServerResponse serverresponse)
    {
        if (mSnapbryo.J() == com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE)
        {
            return;
        } else
        {
            mSnapbryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADED);
            l();
            return;
        }
    }

    public String c()
    {
        return "UploadMediaTask";
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void e(ServerResponse serverresponse)
    {
        super.onCancelled(serverresponse);
    }

    protected void k()
    {
        if (!(mSnapbryo instanceof SnapVideobryo) || !((SnapVideobryo)mSnapbryo).W())
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (!mVideoTranscoder.c((SnapVideobryo)mSnapbryo))
        {
            mSnapWomb.d(mSnapbryo);
        }
        return;
        Exception exception;
        exception;
        Timber.c("UploadMediaTask", exception.getMessage(), new Object[0]);
        return;
    }

    protected void onCancelled(Object obj)
    {
        e((ServerResponse)obj);
    }

    public void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
