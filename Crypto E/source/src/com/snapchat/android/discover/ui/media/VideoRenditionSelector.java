// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import com.snapchat.android.Timber;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.networkmanager.BandwidthEstimator;
import com.snapchat.data.gson.discover.VideoRendition;
import com.snapchat.data.gson.discover.VideoSequenceItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoStreamingConfiguration, VideoProperties

public class VideoRenditionSelector
{
    public static final class VideoRenditionDimensionComparator
        implements Comparator
    {

        public int a(VideoRendition videorendition, VideoRendition videorendition1)
        {
            int i = Math.max(videorendition.b().intValue(), videorendition.c().intValue());
            int j = Math.min(videorendition.b().intValue(), videorendition.c().intValue());
            int k = Math.max(videorendition1.b().intValue(), videorendition1.c().intValue());
            int l = Math.min(videorendition1.b().intValue(), videorendition1.c().intValue());
            if (i != k)
            {
                return i - k;
            } else
            {
                return j - l;
            }
        }

        public int compare(Object obj, Object obj1)
        {
            return a((VideoRendition)obj, (VideoRendition)obj1);
        }

        protected VideoRenditionDimensionComparator()
        {
        }
    }


    private final VideoStreamingConfiguration a;
    private final ScreenParameterProvider b;
    private final BandwidthEstimator c;

    public VideoRenditionSelector()
    {
        this(ScreenParameterProvider.a(), new VideoStreamingConfiguration(), BandwidthEstimator.a());
    }

    protected VideoRenditionSelector(ScreenParameterProvider screenparameterprovider, VideoStreamingConfiguration videostreamingconfiguration, BandwidthEstimator bandwidthestimator)
    {
        b = screenparameterprovider;
        a = videostreamingconfiguration;
        c = bandwidthestimator;
    }

    public VideoProperties a(VideoSequenceItem videosequenceitem)
    {
        VideoProperties videoproperties;
        if (videosequenceitem.b() != null)
        {
            videoproperties = new VideoProperties(videosequenceitem.b(), VideoProperties.Protocol.b);
        } else
        {
            videoproperties = null;
        }
        if (videosequenceitem.c() == null || videosequenceitem.c().size() == 0)
        {
            return videoproperties;
        }
        if (a.a() == VideoStreamingConfiguration.StreamingMode.a)
        {
            Timber.c("VideoRenditionSelector", "Selecting HLS url because configuration says so.", new Object[0]);
            return videoproperties;
        }
        if (a.a() == VideoStreamingConfiguration.StreamingMode.b)
        {
            Timber.c("VideoRenditionSelector", "Selecting best MP4 url because configuration says so.", new Object[0]);
            return a(videosequenceitem.c());
        }
        if (a())
        {
            Timber.c("VideoRenditionSelector", "Selecting HLS url based on client decision.", new Object[0]);
            return videoproperties;
        } else
        {
            Timber.c("VideoRenditionSelector", "Selecting best MP4 url because configuration says so.", new Object[0]);
            return a(videosequenceitem.c());
        }
    }

    protected VideoProperties a(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Collections.sort(arraylist, new VideoRenditionDimensionComparator());
        int i = 0;
        VideoRendition videorendition = null;
        while (i < arraylist.size()) 
        {
            VideoRendition videorendition1 = (VideoRendition)arraylist.get(i);
            if (videorendition1.f() == null || !"MP4".equals(videorendition1.f().toUpperCase(Locale.ENGLISH)) || videorendition != null && (!a(videorendition1) || !b(videorendition1)))
            {
                videorendition1 = videorendition;
            }
            i++;
            videorendition = videorendition1;
        }
        if (videorendition != null)
        {
            Timber.c("VideoRenditionSelector", "Selected rendition %s", new Object[] {
                videorendition
            });
            return new VideoProperties(videorendition.e(), VideoProperties.Protocol.a, videorendition.a(), videorendition.d());
        } else
        {
            Timber.e("VideoRenditionSelector", "No valid MP4 rendition was found!", new Object[0]);
            return null;
        }
    }

    protected boolean a()
    {
        return android.os.Build.VERSION.SDK_INT >= a.b();
    }

    protected boolean a(VideoRendition videorendition)
    {
        int i = Math.max(videorendition.b().intValue(), videorendition.c().intValue());
        int j = Math.min(videorendition.b().intValue(), videorendition.c().intValue());
        int k = Math.max(b.c(), b.d());
        int l = Math.min(b.c(), b.d());
        return i <= k && j <= l;
    }

    protected boolean b(VideoRendition videorendition)
    {
        int i = (int)(a.c() * (float)c.b());
        return videorendition.a().intValue() <= i;
    }
}
