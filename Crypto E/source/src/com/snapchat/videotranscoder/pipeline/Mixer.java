// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.Debug;
import java.nio.ByteBuffer;

public class Mixer
{
    public static final class ShouldCopyAudio extends Enum
    {

        public static final ShouldCopyAudio a;
        public static final ShouldCopyAudio b;
        private static final ShouldCopyAudio c[];

        public static ShouldCopyAudio valueOf(String s)
        {
            return (ShouldCopyAudio)Enum.valueOf(com/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio, s);
        }

        public static ShouldCopyAudio[] values()
        {
            return (ShouldCopyAudio[])c.clone();
        }

        static 
        {
            a = new ShouldCopyAudio("YES", 0);
            b = new ShouldCopyAudio("NO", 1);
            ShouldCopyAudio ashouldcopyaudio[] = new ShouldCopyAudio[2];
            ashouldcopyaudio[0] = a;
            ashouldcopyaudio[1] = b;
            c = ashouldcopyaudio;
        }

        private ShouldCopyAudio(String s, int l)
        {
            super(s, l);
        }
    }

    public static final class ShouldCopyVideo extends Enum
    {

        public static final ShouldCopyVideo a;
        public static final ShouldCopyVideo b;
        private static final ShouldCopyVideo c[];

        public static ShouldCopyVideo valueOf(String s)
        {
            return (ShouldCopyVideo)Enum.valueOf(com/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo, s);
        }

        public static ShouldCopyVideo[] values()
        {
            return (ShouldCopyVideo[])c.clone();
        }

        static 
        {
            a = new ShouldCopyVideo("YES", 0);
            b = new ShouldCopyVideo("NO", 1);
            ShouldCopyVideo ashouldcopyvideo[] = new ShouldCopyVideo[2];
            ashouldcopyvideo[0] = a;
            ashouldcopyvideo[1] = b;
            c = ashouldcopyvideo;
        }

        private ShouldCopyVideo(String s, int l)
        {
            super(s, l);
        }
    }


    private MediaMuxer a;
    private boolean b;
    private boolean c;
    private boolean d;
    private long e;
    private long f;
    private int g;
    private int h;
    private MediaFormat i;
    private MediaFormat j;

    public Mixer(String s, ShouldCopyVideo shouldcopyvideo, ShouldCopyAudio shouldcopyaudio)
    {
        boolean flag = true;
        super();
        a = null;
        d = false;
        e = 0L;
        f = 0L;
        g = -1;
        h = -1;
        i = null;
        j = null;
        boolean flag1;
        try
        {
            a = new MediaMuxer(s, 0);
        }
        catch (Exception exception)
        {
            throw new SetupException(exception.getMessage());
        }
        if (shouldcopyvideo == ShouldCopyVideo.a)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        b = flag1;
        if (shouldcopyaudio != ShouldCopyAudio.a)
        {
            flag = false;
        }
        c = flag;
        if (!b && !c)
        {
            throw new SetupException("video and/or audio must be transcoded");
        } else
        {
            return;
        }
    }

    public int a(MediaFormat mediaformat)
    {
        this;
        JVM INSTR monitorenter ;
        if (!mediaformat.containsKey("channel-count"))
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (i() || !c)
        {
            throw new TranscodingException("Audio track has already been added");
        }
        break MISSING_BLOCK_LABEL_40;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int l;
        l = a.addTrack(mediaformat);
        h = l;
        i = mediaformat;
_L1:
        if ((h() || !b) && (i() || !c))
        {
            a.start();
            d = true;
        }
        this;
        JVM INSTR monitorexit ;
        return l;
label0:
        {
            if (!mediaformat.containsKey("width"))
            {
                break label0;
            }
            if (h() || !b)
            {
                throw new TranscodingException("Video track has already been added");
            }
            l = a.addTrack(mediaformat);
            g = l;
            j = mediaformat;
        }
          goto _L1
        throw new TranscodingException("Attempted to a track that was neither audio or video");
    }

    public void a(int l, ByteBuffer bytebuffer, android.media.MediaCodec.BufferInfo bufferinfo)
    {
        Debug.a(d);
        android.media.MediaCodec.BufferInfo bufferinfo1;
        if (e != 0L)
        {
            bufferinfo1 = new android.media.MediaCodec.BufferInfo();
            bufferinfo1.set(bufferinfo.offset, bufferinfo.size, bufferinfo.presentationTimeUs + e, bufferinfo.flags);
        } else
        {
            bufferinfo1 = bufferinfo;
        }
        a.writeSampleData(l, bytebuffer, bufferinfo1);
        if (bufferinfo1.presentationTimeUs > f)
        {
            f = bufferinfo1.presentationTimeUs;
        }
    }

    public boolean a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        if (a != null && a())
        {
            a.stop();
            a.release();
        }
    }

    public void c()
    {
        e = 1000L + f;
        boolean flag;
        if (e >= 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
    }

    public boolean d()
    {
        return b;
    }

    public boolean e()
    {
        return c;
    }

    public int f()
    {
        Debug.a(h());
        return g;
    }

    public int g()
    {
        Debug.a(i());
        return h;
    }

    public boolean h()
    {
        return g != -1;
    }

    public boolean i()
    {
        return h != -1;
    }

    public MediaFormat j()
    {
        Debug.a(i());
        return i;
    }

    public MediaFormat k()
    {
        Debug.a(h());
        return j;
    }
}
