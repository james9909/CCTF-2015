// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AbstractSampleEntry

public class MpegSampleEntry extends AbstractSampleEntry
{

    public MpegSampleEntry()
    {
        super("mp4s");
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(8);
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        a = IsoTypeReader.d(bytebuffer1);
        a(datasource, l - 8L, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, a);
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
        b(writablebytechannel);
    }

    public long f()
    {
        long l = m();
        long l1 = l + 8L;
        int i;
        if (e || l + 8L >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l1 + (long)i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("MpegSampleEntry");
        List alist[] = new List[1];
        alist[0] = a();
        return stringbuilder.append(Arrays.asList(alist)).toString();
    }
}
