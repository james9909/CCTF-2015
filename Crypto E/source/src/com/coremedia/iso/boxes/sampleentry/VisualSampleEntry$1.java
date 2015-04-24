// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            VisualSampleEntry

class c
    implements DataSource
{

    final VisualSampleEntry a;
    private final long b;
    private final DataSource c;

    public int a(ByteBuffer bytebuffer)
    {
        if (b == c.b())
        {
            return -1;
        }
        if ((long)bytebuffer.remaining() > b - c.b())
        {
            ByteBuffer bytebuffer1 = ByteBuffer.allocate(CastUtils.a(b - c.b()));
            c.a(bytebuffer1);
            bytebuffer.put((ByteBuffer)bytebuffer1.rewind());
            return bytebuffer1.capacity();
        } else
        {
            return c.a(bytebuffer);
        }
    }

    public long a()
    {
        return b;
    }

    public long a(long l, long l1, WritableByteChannel writablebytechannel)
    {
        return c.a(l, l1, writablebytechannel);
    }

    public ByteBuffer a(long l, long l1)
    {
        return c.a(l, l1);
    }

    public void a(long l)
    {
        c.a(l);
    }

    public long b()
    {
        return c.b();
    }

    public void close()
    {
        c.close();
    }

    (VisualSampleEntry visualsampleentry, long l, DataSource datasource)
    {
        a = visualsampleentry;
        b = l;
        c = datasource;
        super();
    }
}
