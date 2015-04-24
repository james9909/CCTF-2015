// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.Sample;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            DefaultMp4Builder

class 
    implements Box
{

    List a;
    Container b;
    long c;

    private boolean a(long l)
    {
        return 8L + l < 0x100000000L;
    }

    public void a(Container container)
    {
        b = container;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(16);
        long l = f();
        Iterator iterator;
        if (a(l))
        {
            IsoTypeWriter.b(bytebuffer, l);
        } else
        {
            IsoTypeWriter.b(bytebuffer, 1L);
        }
        bytebuffer.put(IsoFile.a("mdat"));
        if (a(l))
        {
            bytebuffer.put(new byte[8]);
        } else
        {
            IsoTypeWriter.a(bytebuffer, l);
        }
        bytebuffer.rewind();
        writablebytechannel.write(bytebuffer);
        iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Iterator iterator1 = ((List)iterator.next()).iterator();
            while (iterator1.hasNext()) 
            {
                ((Sample)iterator1.next()).a(writablebytechannel);
            }
        } while (true);
    }

    public Container e()
    {
        return b;
    }

    public long f()
    {
        return 16L + c;
    }

    public String g()
    {
        return "mdat";
    }
}
