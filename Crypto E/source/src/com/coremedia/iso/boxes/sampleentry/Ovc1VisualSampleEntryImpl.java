// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AbstractSampleEntry

public class Ovc1VisualSampleEntryImpl extends AbstractSampleEntry
{

    private byte b[];

    public Ovc1VisualSampleEntryImpl()
    {
        super("ovc1");
        b = new byte[0];
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(CastUtils.a(l));
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        b = new byte[bytebuffer1.remaining()];
        bytebuffer1.get(b);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        writablebytechannel.write(ByteBuffer.wrap(b));
    }

    public long f()
    {
        int i;
        if (e || (long)(16 + b.length) >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return 8L + ((long)i + (long)b.length);
    }
}
