// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            AudioSampleEntry

class c
    implements Box
{

    final AudioSampleEntry a;
    private final long b;
    private final ByteBuffer c;

    public void a(Container container)
    {
        if (!AudioSampleEntry.b && container != a)
        {
            throw new AssertionError("you cannot diswown this special box");
        } else
        {
            return;
        }
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        throw new RuntimeException("NotImplemented");
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        c.rewind();
        writablebytechannel.write(c);
    }

    public Container e()
    {
        return a;
    }

    public long f()
    {
        return b;
    }

    public String g()
    {
        return "----";
    }

    (AudioSampleEntry audiosampleentry, long l, ByteBuffer bytebuffer)
    {
        a = audiosampleentry;
        b = l;
        c = bytebuffer;
        super();
    }
}
