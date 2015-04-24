// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.samples;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser.authoring.samples:
//            DefaultMp4SampleList

class d
    implements Sample
{

    final DefaultMp4SampleList a;
    private final long b;
    private final ByteBuffer c;
    private final long d;

    public long a()
    {
        return b;
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(b());
    }

    public ByteBuffer b()
    {
        return (ByteBuffer)((ByteBuffer)c.position(CastUtils.a(d))).slice().limit(CastUtils.a(b));
    }

    public String toString()
    {
        return (new StringBuilder("DefaultMp4Sample(size:")).append(b).append(")").toString();
    }

    (DefaultMp4SampleList defaultmp4samplelist, long l, ByteBuffer bytebuffer, long l1)
    {
        a = defaultmp4samplelist;
        b = l;
        c = bytebuffer;
        d = l1;
        super();
    }
}
