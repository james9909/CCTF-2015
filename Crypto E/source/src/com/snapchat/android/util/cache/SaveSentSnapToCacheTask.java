// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.transcoding.VideoTranscoder;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.util.SnapUtils;

// Referenced classes of package com.snapchat.android.util.cache:
//            ExternalStorageUnavailableException, SendSnapCacheWrapper

public class SaveSentSnapToCacheTask extends AsyncTask
{

    private final SnapWomb a;
    private final VideoTranscoder b;

    public SaveSentSnapToCacheTask()
    {
        this(SnapWomb.a(), VideoTranscoder.a());
    }

    protected SaveSentSnapToCacheTask(SnapWomb snapwomb, VideoTranscoder videotranscoder)
    {
        a = snapwomb;
        b = videotranscoder;
    }

    private void b(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo.b() == 0 && annotatedmediabryo.B() == null)
        {
            throw new IllegalArgumentException();
        }
        if (SnapUtils.a(annotatedmediabryo) && annotatedmediabryo.I() == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            return;
        }
    }

    protected transient Void a(AnnotatedMediabryo aannotatedmediabryo[])
    {
        AnnotatedMediabryo annotatedmediabryo;
        annotatedmediabryo = aannotatedmediabryo[0];
        b(annotatedmediabryo);
        Timber.c("SaveSentSnapToCacheTask", (new StringBuilder()).append("Save the media to the cache! of type:").append(annotatedmediabryo.b()).toString(), new Object[0]);
        if (annotatedmediabryo.b() != 0) goto _L2; else goto _L1
_L1:
        a(annotatedmediabryo);
_L4:
        return null;
_L2:
        if (annotatedmediabryo instanceof SnapVideobryo)
        {
            a((SnapVideobryo)annotatedmediabryo);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected boolean a(AnnotatedMediabryo annotatedmediabryo)
    {
        if (isCancelled())
        {
            return false;
        }
        try
        {
            SendSnapCacheWrapper.a().e(annotatedmediabryo);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.c("SaveSentSnapToCacheTask", "External storage not available.", new Object[0]);
            return false;
        }
        return true;
    }

    protected boolean a(SnapVideobryo snapvideobryo)
    {
        if (snapvideobryo.W() && !b.c(snapvideobryo))
        {
            a.d(snapvideobryo);
        }
        if (snapvideobryo.Q() != null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        Timber.e("SaveSentSnapToCacheTask", "Snap does not have valid media", new Object[0]);
        snapvideobryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.FAILED);
        return false;
        try
        {
            SendSnapCacheWrapper.a().a(snapvideobryo);
            Timber.c("SaveSentSnapToCacheTask", "Transcoding finished", new Object[0]);
        }
        catch (InterruptedException interruptedexception)
        {
            Timber.c("SaveSentSnapToCacheTask", interruptedexception.getMessage(), new Object[0]);
            return false;
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.c("SaveSentSnapToCacheTask", "External storage not available.", new Object[0]);
            return false;
        }
        return true;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((AnnotatedMediabryo[])aobj);
    }
}
