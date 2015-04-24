// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import java.nio.ByteBuffer;

public class Codec
{

    protected MediaCodec a;
    protected ByteBuffer b[];
    protected ByteBuffer c[];
    protected android.media.MediaCodec.BufferInfo d;

    public Codec(MediaCodec mediacodec, MediaFormat mediaformat, Surface surface, MediaCrypto mediacrypto, int l, boolean flag)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        a = mediacodec;
        if (a == null)
        {
            throw new SetupException("Codec is null");
        }
        a(mediaformat, surface, mediacrypto, l);
        if (flag)
        {
            VerboseLogging.a("Codec", (new StringBuilder()).append("Codec was initialized: ").append(a.toString()).toString());
            return;
        } else
        {
            b();
            VerboseLogging.a("Codec", (new StringBuilder()).append("Codec was initialized: ").append(a.toString()).append(" inputBuffers: ").append(b).append(" outputBuffers: ").append(c).append(" outputBufferInfo ").append(d).toString());
            return;
        }
    }

    private void a(MediaFormat mediaformat, Surface surface, MediaCrypto mediacrypto, int l)
    {
        try
        {
            a.configure(mediaformat, surface, mediacrypto, l);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            String s = (new StringBuilder()).append("Failed to configure codec: ").append(illegalstateexception.toString()).toString();
            String s1 = (new StringBuilder()).append(s).append(" format:[").toString();
            String s2 = (new StringBuilder()).append(s1).append(mediaformat.toString()).toString();
            String s3 = (new StringBuilder()).append(s2).append("]").toString();
            String s4;
            String s5;
            String s6;
            if (surface != null)
            {
                String s9 = (new StringBuilder()).append(s3).append(", surface:[").toString();
                String s10 = (new StringBuilder()).append(s9).append(surface.toString()).toString();
                s4 = (new StringBuilder()).append(s10).append("]").toString();
            } else
            {
                s4 = (new StringBuilder()).append(s3).append(", surface:null").toString();
            }
            if (mediacrypto != null)
            {
                String s7 = (new StringBuilder()).append(s4).append(", crypto:[").toString();
                String s8 = (new StringBuilder()).append(s7).append(mediacrypto.toString()).toString();
                s5 = (new StringBuilder()).append(s8).append("]").toString();
            } else
            {
                s5 = (new StringBuilder()).append(s4).append(", crypto:null").toString();
            }
            s6 = (new StringBuilder()).append(s5).append(", flags:").append(l).toString();
            Log.e("Codec", s6, illegalstateexception);
            throw new SetupException(s6, illegalstateexception);
        }
    }

    public int a(long l)
    {
        int i1;
        try
        {
            i1 = a.dequeueOutputBuffer(d, l);
            VerboseLogging.a("Codec", (new StringBuilder()).append("decoder: returned output buffer: ").append(i1).append(" size: ").append(d.size).append(" Buffer flag is: ").append(d.flags).toString());
        }
        catch (IllegalStateException illegalstateexception)
        {
            String s = (new StringBuilder()).append("Failed to dequeue output buffer: ").append(illegalstateexception.toString()).toString();
            String s1;
            if (d != null)
            {
                String s2 = (new StringBuilder()).append(s).append(" outputBufferInfo:[").toString();
                String s3 = (new StringBuilder()).append(s2).append("offset:").append(d.offset).toString();
                String s4 = (new StringBuilder()).append(s3).append(", size:").append(d.size).toString();
                String s5 = (new StringBuilder()).append(s4).append(", presentationTimeUs:").append(d.presentationTimeUs).toString();
                String s6 = (new StringBuilder()).append(s5).append(", flags:").append(d.flags).toString();
                s1 = (new StringBuilder()).append(s6).append("]").toString();
            } else
            {
                s1 = (new StringBuilder()).append(s).append(" outputBufferInfo:null").toString();
            }
            Log.e("Codec", s1, illegalstateexception);
            throw new TranscodingException(s1, illegalstateexception);
        }
        return i1;
    }

    public ByteBuffer a(int l)
    {
        return b[l];
    }

    public void a()
    {
        a.start();
    }

    public void a(int l, int i1, int j1, long l1, int k1)
    {
        VerboseLogging.a("Codec", "Calling queueInputBuffer");
        a.queueInputBuffer(l, i1, j1, l1, k1);
    }

    public void a(int l, boolean flag)
    {
        a.releaseOutputBuffer(l, flag);
    }

    public int b(long l)
    {
        return a.dequeueInputBuffer(l);
    }

    public void b()
    {
        a();
        c();
    }

    public void b(int l)
    {
        if (l == -1)
        {
            VerboseLogging.a("Codec", "no decoder output buffer");
        }
        if (l == -3)
        {
            VerboseLogging.a("Codec", "output buffers changed");
            c = a.getOutputBuffers();
        }
        if (l == -2)
        {
            VerboseLogging.a("Codec", (new StringBuilder()).append("output format changed: ").append(a.getOutputFormat()).toString());
        }
    }

    public ByteBuffer c(int l)
    {
        return b[l];
    }

    public void c()
    {
        c = a.getOutputBuffers();
        b = a.getInputBuffers();
        d = new android.media.MediaCodec.BufferInfo();
    }

    public ByteBuffer d(int l)
    {
        ByteBuffer bytebuffer = c[l].duplicate();
        bytebuffer.position(d.offset);
        bytebuffer.limit(d.offset + d.size);
        return bytebuffer;
    }

    public void d()
    {
        try
        {
            if (a != null)
            {
                VerboseLogging.a("Codec", "Stopping codec");
                a.stop();
                VerboseLogging.a("Codec", "releasing codec");
                a.release();
                a = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("Codec", "error while releasing mCodec", exception);
        }
    }

    public boolean e()
    {
        if ((2 & d.flags) != 0)
        {
            VerboseLogging.a("Codec", "buffer is codec config buffer");
            return true;
        } else
        {
            return false;
        }
    }

    public android.media.MediaCodec.BufferInfo f()
    {
        return d;
    }

    public boolean g()
    {
        return (4 & d.flags) != 0;
    }

    public void h()
    {
        if (a != null)
        {
            a.flush();
            c();
        }
    }

    public MediaFormat i()
    {
        return a.getOutputFormat();
    }

    public void j()
    {
        a.signalEndOfInputStream();
    }

    public Surface k()
    {
        return a.createInputSurface();
    }
}
