// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.media.MediaFormat;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

public class SaveStoryToGalleryAnalytics
{

    private static final SaveStoryToGalleryAnalytics sInstance = new SaveStoryToGalleryAnalytics();

    protected SaveStoryToGalleryAnalytics()
    {
    }

    public static SaveStoryToGalleryAnalytics a()
    {
        return sInstance;
    }

    public void a(int i, int j, long l, com.snapchat.android.util.cache.SaveStoryToGalleryTask.Result result, com.snapchat.videotranscoder.task.Task.Status status, TranscodingConfiguration transcodingconfiguration)
    {
        EasyMetric easymetric = new EasyMetric("SAVE_ENTIRE_STORY");
        boolean flag;
        EasyMetric easymetric1;
        if (result == com.snapchat.android.util.cache.SaveStoryToGalleryTask.Result.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        easymetric1 = easymetric.a("success", Boolean.valueOf(flag)).a("reason", result.name()).a("transcoding_status", status.name()).a("count", Integer.valueOf(i + j)).a("video_count", Integer.valueOf(i)).a("image_count", Integer.valueOf(j)).a("save_story_time", Long.valueOf(l));
        if (transcodingconfiguration != null)
        {
            long l1 = 0L;
            MediaSource amediasource[] = transcodingconfiguration.a();
            int k = amediasource.length;
            for (int i1 = 0; i1 < k; i1++)
            {
                l1 += amediasource[i1].a();
            }

            easymetric1.a("media_duration", Long.valueOf(l1));
            MediaFormat mediaformat = transcodingconfiguration.c().b();
            easymetric1.a("video_width", Integer.valueOf(mediaformat.getInteger("width"))).a("video_height", Integer.valueOf(mediaformat.getInteger("height"))).a("video_bitrate", Integer.valueOf(mediaformat.getInteger("bitrate"))).a("video_framerate", Integer.valueOf(mediaformat.getInteger("frame-rate")));
        }
        easymetric1.a(true);
    }

}
