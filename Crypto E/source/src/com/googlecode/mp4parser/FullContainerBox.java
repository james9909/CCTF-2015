// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.FullBox;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser:
//            AbstractContainerBox, DataSource

public abstract class FullContainerBox extends AbstractContainerBox
    implements FullBox
{

    private static Logger a = Logger.getLogger(com/googlecode/mp4parser/FullContainerBox.getName());
    private int b;
    private int l;

    protected final long a(ByteBuffer bytebuffer)
    {
        b = IsoTypeReader.f(bytebuffer);
        l = IsoTypeReader.c(bytebuffer);
        return 4L;
    }

    public List a(Class class1)
    {
        return a(class1, false);
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(4);
        datasource.a(bytebuffer1);
        a((ByteBuffer)bytebuffer1.rewind());
        super.a(datasource, bytebuffer, l1, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        super.a(writablebytechannel);
    }

    protected final void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.a(bytebuffer, l);
    }

    protected ByteBuffer l()
    {
        ByteBuffer bytebuffer;
        if (e || f() >= 0x100000000L)
        {
            byte abyte0[] = new byte[20];
            abyte0[3] = 1;
            abyte0[4] = d.getBytes()[0];
            abyte0[5] = d.getBytes()[1];
            abyte0[6] = d.getBytes()[2];
            abyte0[7] = d.getBytes()[3];
            bytebuffer = ByteBuffer.wrap(abyte0);
            bytebuffer.position(8);
            IsoTypeWriter.a(bytebuffer, f());
            b(bytebuffer);
        } else
        {
            byte abyte1[] = new byte[12];
            abyte1[4] = d.getBytes()[0];
            abyte1[5] = d.getBytes()[1];
            abyte1[6] = d.getBytes()[2];
            abyte1[7] = d.getBytes()[3];
            bytebuffer = ByteBuffer.wrap(abyte1);
            IsoTypeWriter.b(bytebuffer, f());
            bytebuffer.position(8);
            b(bytebuffer);
        }
        bytebuffer.rewind();
        return bytebuffer;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(getClass().getSimpleName()))).append("[childBoxes]").toString();
    }

}
