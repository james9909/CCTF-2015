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
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            FullBox

public class SampleDescriptionBox extends AbstractContainerBox
    implements FullBox
{

    private int a;
    private int b;

    public SampleDescriptionBox()
    {
        super("stsd");
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(8);
        datasource.a(bytebuffer1);
        bytebuffer1.rewind();
        a = IsoTypeReader.f(bytebuffer1);
        b = IsoTypeReader.c(bytebuffer1);
        a(datasource, l - 8L, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        IsoTypeWriter.d(bytebuffer, a);
        IsoTypeWriter.a(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, a().size());
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    public long f()
    {
        long l = m();
        long l1 = l + 8L;
        int i;
        if (e || 8L + (l + 8L) >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l1 + (long)i;
    }
}
