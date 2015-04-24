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
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            FragmentedMp4Builder

class 
    implements Box
{

    Container a;
    long b;
    final FragmentedMp4Builder c;
    private final long d;
    private final long e;
    private final Track f;
    private final int g;

    public void a(Container container)
    {
        a = container;
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        IsoTypeWriter.b(bytebuffer, CastUtils.a(f()));
        bytebuffer.put(IsoFile.a(g()));
        bytebuffer.rewind();
        writablebytechannel.write(bytebuffer);
        Iterator iterator = c.a(d, e, f, g).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((Sample)iterator.next()).a(writablebytechannel);
        } while (true);
    }

    public Container e()
    {
        return a;
    }

    public long f()
    {
        if (b != -1L)
        {
            return b;
        }
        Iterator iterator = c.a(d, e, f, g).iterator();
        long l = 8L;
        do
        {
            if (!iterator.hasNext())
            {
                b = l;
                return l;
            }
            l += ((Sample)iterator.next()).a();
        } while (true);
    }

    public String g()
    {
        return "mdat";
    }
}
