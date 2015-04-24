// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.utils.MimeTools;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            MediaSource

public class VideoMediaSource extends MediaSource
{
    public static final class AudioChannelSource extends Enum
    {

        public static final AudioChannelSource a;
        public static final AudioChannelSource b;
        public static final AudioChannelSource c;
        private static final AudioChannelSource d[];

        public static AudioChannelSource valueOf(String s)
        {
            return (AudioChannelSource)Enum.valueOf(com/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource, s);
        }

        public static AudioChannelSource[] values()
        {
            return (AudioChannelSource[])d.clone();
        }

        static 
        {
            a = new AudioChannelSource("ORIGINAL", 0);
            b = new AudioChannelSource("SILENCE", 1);
            c = new AudioChannelSource("DISABLED", 2);
            AudioChannelSource aaudiochannelsource[] = new AudioChannelSource[3];
            aaudiochannelsource[0] = a;
            aaudiochannelsource[1] = b;
            aaudiochannelsource[2] = c;
            d = aaudiochannelsource;
        }

        private AudioChannelSource(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class VideoChannelSource extends Enum
    {

        public static final VideoChannelSource a;
        public static final VideoChannelSource b;
        private static final VideoChannelSource c[];

        public static VideoChannelSource valueOf(String s)
        {
            return (VideoChannelSource)Enum.valueOf(com/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource, s);
        }

        public static VideoChannelSource[] values()
        {
            return (VideoChannelSource[])c.clone();
        }

        static 
        {
            a = new VideoChannelSource("ORIGINAL", 0);
            b = new VideoChannelSource("DISABLED", 1);
            VideoChannelSource avideochannelsource[] = new VideoChannelSource[2];
            avideochannelsource[0] = a;
            avideochannelsource[1] = b;
            c = avideochannelsource;
        }

        private VideoChannelSource(String s, int i)
        {
            super(s, i);
        }
    }


    private long a;
    private final float b[];
    private final String c;
    private final VideoChannelSource d;
    private final AudioChannelSource e;
    private com.snapchat.videotranscoder.video.ShaderText.Type f;
    private long g;

    public VideoMediaSource(String s, float af[], String s1, VideoChannelSource videochannelsource, AudioChannelSource audiochannelsource)
    {
        super(s);
        a = -1L;
        f = com.snapchat.videotranscoder.video.ShaderText.Type.a;
        g = a;
        boolean flag;
        if (videochannelsource != VideoChannelSource.b || audiochannelsource != AudioChannelSource.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
        b = af;
        c = s1;
        d = videochannelsource;
        e = audiochannelsource;
    }

    public VideoMediaSource(String s, float af[], String s1, com.snapchat.videotranscoder.video.ShaderText.Type type, VideoChannelSource videochannelsource, AudioChannelSource audiochannelsource)
    {
        this(s, af, s1, videochannelsource, audiochannelsource);
        f = type;
    }

    public long a()
    {
        if (g == a)
        {
            g = (new MimeTools()).c(b());
        }
        return g;
    }

    public float[] c()
    {
        return b;
    }

    public String d()
    {
        return c;
    }

    public com.snapchat.videotranscoder.video.ShaderText.Type e()
    {
        return f;
    }

    public VideoChannelSource f()
    {
        return d;
    }

    public AudioChannelSource g()
    {
        return e;
    }
}
