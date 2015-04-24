// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.handledexceptions.TranscodingFailedException;
import com.snapchat.android.analytics.transcoding.TranscodingTaskMetrics;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

// Referenced classes of package com.snapchat.android.camera.transcoding:
//            VideoTranscoder

public class TranscodingDoneCallback
    implements com.snapchat.videotranscoder.task.Task.DoneCallback
{

    private final SnapVideobryo a;
    private final TranscodingTaskMetrics b;
    private final VideoTranscoder c;
    private final ExceptionReporter d;
    private final TranscodingConfiguration e;

    public TranscodingDoneCallback(VideoTranscoder videotranscoder, SnapVideobryo snapvideobryo, TranscodingConfiguration transcodingconfiguration, TranscodingTaskMetrics transcodingtaskmetrics)
    {
        this(videotranscoder, snapvideobryo, transcodingconfiguration, transcodingtaskmetrics, new ExceptionReporter());
    }

    private TranscodingDoneCallback(VideoTranscoder videotranscoder, SnapVideobryo snapvideobryo, TranscodingConfiguration transcodingconfiguration, TranscodingTaskMetrics transcodingtaskmetrics, ExceptionReporter exceptionreporter)
    {
        a = snapvideobryo;
        b = transcodingtaskmetrics;
        e = transcodingconfiguration;
        c = videotranscoder;
        d = exceptionreporter;
    }

    public void a(com.snapchat.videotranscoder.task.Task.Status status)
    {
        b.a(a, e, status);
        c.a(a, status);
        if (status != com.snapchat.videotranscoder.task.Task.Status.g)
        {
            d.a(new TranscodingFailedException(status));
            Timber.e("TranscodingDone", (new StringBuilder()).append("Transcoding failed. Status : ").append(status).toString(), new Object[0]);
        }
    }
}
