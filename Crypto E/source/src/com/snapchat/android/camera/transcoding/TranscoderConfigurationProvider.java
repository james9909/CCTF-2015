// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import android.media.MediaFormat;
import com.snapchat.android.analytics.handledexceptions.FailedToFindAcceptableTranscodingResolutionException;
import com.snapchat.android.camera.transcoding.resolution.TranscodingResolutionProvider;
import com.snapchat.android.camera.transcoding.resolution.TranscodingResolutionProviderFactory;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.MimeTools;

public class TranscoderConfigurationProvider
{

    private final SnapVideobryo a;
    private final MimeTools b;
    private final ExceptionReporter c;

    public TranscoderConfigurationProvider(SnapVideobryo snapvideobryo)
    {
        this(snapvideobryo, new MimeTools(), new ExceptionReporter());
    }

    protected TranscoderConfigurationProvider(SnapVideobryo snapvideobryo, MimeTools mimetools, ExceptionReporter exceptionreporter)
    {
        a = snapvideobryo;
        b = mimetools;
        c = exceptionreporter;
    }

    private Resolution c(String s)
    {
        return new Resolution(b.d(s), b.e(s));
    }

    protected int a(int i)
    {
        return Math.min(8 * (1000 * (0x1a6667 / i)), 0x3d0900);
    }

    public EncoderConfiguration a(TranscodingResolutionProvider transcodingresolutionprovider, long l, int i, Resolution resolution)
    {
        Resolution resolution1 = transcodingresolutionprovider.a(i);
        MediaFormat mediaformat;
        if (resolution1 == null)
        {
            FailedToFindAcceptableTranscodingResolutionException failedtofindacceptabletranscodingresolutionexception = new FailedToFindAcceptableTranscodingResolutionException(resolution);
            c.a(failedtofindacceptabletranscodingresolutionexception);
        } else
        {
            resolution = resolution1;
        }
        mediaformat = MediaFormat.createVideoFormat("video/avc", resolution.b(), resolution.a());
        mediaformat.setInteger("color-format", 0x7f000789);
        mediaformat.setInteger("bitrate", i);
        mediaformat.setLong("durationUs", 1000L * l);
        mediaformat.setInteger("frame-rate", 30);
        mediaformat.setInteger("i-frame-interval", 1);
        return new EncoderConfiguration("video/avc", mediaformat);
    }

    public EncoderConfiguration a(String s)
    {
        EncoderConfiguration encoderconfiguration;
        try
        {
            MediaFormat mediaformat = b.a(s, false);
            MediaFormat mediaformat1 = MediaFormat.createAudioFormat("audio/mp4a-latm", b.d(mediaformat), b.e(mediaformat));
            mediaformat1.setInteger("bitrate", 0x20000);
            encoderconfiguration = new EncoderConfiguration("audio/mp4a-latm", mediaformat1);
        }
        catch (Exception exception)
        {
            throw new SetupException(exception.getMessage());
        }
        return encoderconfiguration;
    }

    public TranscodingConfiguration b(String s)
    {
        Resolution resolution = c(s);
        TranscodingResolutionProvider transcodingresolutionprovider = TranscodingResolutionProviderFactory.a().a(c(s));
        long l = b.c(s);
        int i = a((int)l);
        float af[] = a.ac();
        com.snapchat.videotranscoder.video.ShaderText.Type type = a.f();
        com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource videochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.VideoChannelSource.a;
        com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource audiochannelsource;
        VideoMediaSource videomediasource;
        TranscodingConfiguration transcodingconfiguration;
        if (a.c())
        {
            audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.b;
        } else
        {
            audiochannelsource = com.snapchat.videotranscoder.task.VideoMediaSource.AudioChannelSource.a;
        }
        videomediasource = new VideoMediaSource(s, af, null, type, videochannelsource, audiochannelsource);
        transcodingconfiguration = new TranscodingConfiguration(new MediaSource[] {
            videomediasource
        }, a.S(), a(transcodingresolutionprovider, l, i, resolution), a(s), false);
        return transcodingconfiguration;
    }
}
