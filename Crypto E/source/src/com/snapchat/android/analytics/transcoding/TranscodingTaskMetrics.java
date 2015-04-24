// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.transcoding;

import android.media.MediaFormat;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

public class TranscodingTaskMetrics extends EasyMetric
{

    public TranscodingTaskMetrics()
    {
        super("TRANSCODING");
        a();
    }

    public void a(SnapVideobryo snapvideobryo, TranscodingConfiguration transcodingconfiguration, com.snapchat.videotranscoder.task.Task.Status status)
    {
        a("transcoding_status", status.name());
        a("retries", Integer.valueOf(snapvideobryo.R()));
        a("video_width", Integer.valueOf(transcodingconfiguration.c().b().getInteger("width")));
        a("video_height", Integer.valueOf(transcodingconfiguration.c().b().getInteger("height")));
        a("bit_rate", Integer.valueOf(transcodingconfiguration.c().b().getInteger("bitrate")));
        a("frame_rate", Integer.valueOf(transcodingconfiguration.c().b().getInteger("frame-rate")));
        a("media_duration", Integer.valueOf((int)Math.ceil(transcodingconfiguration.c().b().getLong("durationUs") / 0xf4240L)));
        a("transcoding_orientation", Integer.valueOf(snapvideobryo.aa()));
        super.a(true);
    }
}
