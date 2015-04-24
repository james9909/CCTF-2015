// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.pipeline;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.util.Log;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.MimeTools;

// Referenced classes of package com.snapchat.videotranscoder.pipeline:
//            Stage, Codec, StageDoneCallback

public abstract class Extractor extends Stage
{

    public MediaExtractor a;
    public int b;
    protected Codec c;
    protected volatile boolean d;
    private long g;
    private String h;

    public Extractor(String s, StageDoneCallback stagedonecallback)
    {
        super(stagedonecallback);
        a = null;
        b = -1;
        c = null;
        g = 0L;
        d = false;
        h = s;
        try
        {
            a = (new MimeTools()).b(s);
            return;
        }
        catch (Exception exception)
        {
            throw new SetupException((new StringBuilder()).append(exception.getMessage()).append(exception.toString()).toString());
        }
    }

    public abstract void a();

    public void a(Codec codec)
    {
        c = codec;
    }

    public MediaFormat b()
    {
        if (b == -1)
        {
            throw new TranscodingException((new StringBuilder()).append("Request track is undefined ").append(a.getTrackCount()).toString());
        } else
        {
            return a.getTrackFormat(b);
        }
    }

    public void c()
    {
        d = true;
    }

    public void d()
    {
        if (c == null)
        {
            throw new TranscodingException("Decoder is null");
        }
        int i = c.b(10000L);
        if (i == -1)
        {
            return;
        }
        java.nio.ByteBuffer bytebuffer = c.c(i);
        int j = a.readSampleData(bytebuffer, 0);
        if (j >= 0 && !d)
        {
            long l = a.getSampleTime();
            c.a(i, 0, j, l, a.getSampleFlags());
            if (l < g)
            {
                Log.e("EXTRACTOR", (new StringBuilder()).append("Extractor out of sync last:").append(g).append(" cur: ").append(l).toString());
            }
            g = l;
            a.advance();
            return;
        } else
        {
            c.a(i, 0, 0, 0L, 4);
            h();
            return;
        }
    }

    public void e()
    {
        if (a != null)
        {
            a.seekTo(0L, 2);
        }
    }

    public void f()
    {
        try
        {
            if (a != null)
            {
                a.release();
                a = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("EXTRACTOR", "error while releasing mExtractor", exception);
        }
    }

    public long g()
    {
        return g;
    }
}
