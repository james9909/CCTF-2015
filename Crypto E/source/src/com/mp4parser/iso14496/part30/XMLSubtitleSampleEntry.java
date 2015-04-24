// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part30;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.sampleentry.AbstractSampleEntry;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public class XMLSubtitleSampleEntry extends AbstractSampleEntry
{

    private String b;
    private String l;
    private String m;

    public XMLSubtitleSampleEntry()
    {
        super("stpp");
        b = "";
        l = "";
        m = "";
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(8);
        datasource.a((ByteBuffer)bytebuffer1.rewind());
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        long l2 = datasource.b();
        ByteBuffer bytebuffer2 = ByteBuffer.allocate(1024);
        datasource.a((ByteBuffer)bytebuffer2.rewind());
        b = IsoTypeReader.g((ByteBuffer)bytebuffer2.rewind());
        datasource.a(1L + (l2 + (long)b.length()));
        datasource.a((ByteBuffer)bytebuffer2.rewind());
        l = IsoTypeReader.g((ByteBuffer)bytebuffer2.rewind());
        datasource.a(2L + (l2 + (long)b.length() + (long)l.length()));
        datasource.a((ByteBuffer)bytebuffer2.rewind());
        m = IsoTypeReader.g((ByteBuffer)bytebuffer2.rewind());
        datasource.a(3L + (l2 + (long)b.length() + (long)l.length() + (long)m.length()));
        a(datasource, l1 - (long)(3 + (bytebuffer.remaining() + b.length() + l.length() + m.length())), boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(3 + (8 + b.length() + l.length() + m.length()));
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, l);
        IsoTypeWriter.b(bytebuffer, m);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    public long f()
    {
        long l1 = m();
        long l2 = 3 + (8 + b.length() + l.length() + m.length());
        long l3 = l1 + l2;
        int i;
        if (e || 8L + (l1 + l2) >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l3 + (long)i;
    }
}
