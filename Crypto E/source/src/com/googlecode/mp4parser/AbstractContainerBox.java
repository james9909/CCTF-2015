// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser:
//            BasicContainer, DataSource

public class AbstractContainerBox extends BasicContainer
    implements Box
{

    private long a;
    Container c;
    public String d;
    public boolean e;

    public AbstractContainerBox(String s)
    {
        d = s;
    }

    public void a(Container container)
    {
        c = container;
    }

    public void a(DataSource datasource, long l1, BoxParser boxparser)
    {
        g = datasource;
        this.i = datasource.b();
        long l2 = this.i;
        int i;
        if (e || 8L + l1 >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        j = l2 - (long)i;
        datasource.a(l1 + datasource.b());
        k = datasource.b();
        f = boxparser;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        a = datasource.b() - (long)bytebuffer.remaining();
        boolean flag;
        if (bytebuffer.remaining() == 16)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
        a(datasource, l1, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        b(writablebytechannel);
    }

    public Container e()
    {
        return c;
    }

    public long f()
    {
        long l1 = m();
        int i;
        if (e || 8L + l1 >= 0x100000000L)
        {
            i = 16;
        } else
        {
            i = 8;
        }
        return l1 + (long)i;
    }

    public String g()
    {
        return d;
    }

    public ByteBuffer l()
    {
        ByteBuffer bytebuffer;
        if (e || f() >= 0x100000000L)
        {
            byte abyte0[] = new byte[16];
            abyte0[3] = 1;
            abyte0[4] = d.getBytes()[0];
            abyte0[5] = d.getBytes()[1];
            abyte0[6] = d.getBytes()[2];
            abyte0[7] = d.getBytes()[3];
            bytebuffer = ByteBuffer.wrap(abyte0);
            bytebuffer.position(8);
            IsoTypeWriter.a(bytebuffer, f());
        } else
        {
            byte abyte1[] = new byte[8];
            abyte1[4] = d.getBytes()[0];
            abyte1[5] = d.getBytes()[1];
            abyte1[6] = d.getBytes()[2];
            abyte1[7] = d.getBytes()[3];
            bytebuffer = ByteBuffer.wrap(abyte1);
            IsoTypeWriter.b(bytebuffer, f());
        }
        bytebuffer.rewind();
        return bytebuffer;
    }
}
