// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractContainerBox;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public class MetaBox extends AbstractContainerBox
{

    private int a;
    private int b;

    public MetaBox()
    {
        super("meta");
    }

    protected final long a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.f(bytebuffer);
        b = IsoTypeReader.c(bytebuffer);
        return 4L;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(4);
        datasource.a(bytebuffer1);
        a((ByteBuffer)bytebuffer1.rewind());
        a(datasource, l - 4L, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(4);
        b(bytebuffer);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    protected final void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.d(bytebuffer, a);
        IsoTypeWriter.a(bytebuffer, b);
    }

    public long f()
    {
        long l = m();
        long l1 = l + 4L;
        int i;
        if (e || l + 4L >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l1 + (long)i;
    }
}
