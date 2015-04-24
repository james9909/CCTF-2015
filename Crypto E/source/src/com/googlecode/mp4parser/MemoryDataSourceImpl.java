// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser:
//            DataSource

public class MemoryDataSourceImpl
    implements DataSource
{

    ByteBuffer a;

    public int a(ByteBuffer bytebuffer)
    {
        if (a.remaining() == 0 && bytebuffer.remaining() != 0)
        {
            return -1;
        } else
        {
            byte abyte0[] = new byte[Math.min(bytebuffer.remaining(), a.remaining())];
            a.get(abyte0);
            bytebuffer.put(abyte0);
            return abyte0.length;
        }
    }

    public long a()
    {
        return (long)a.capacity();
    }

    public long a(long l, long l1, WritableByteChannel writablebytechannel)
    {
        return (long)writablebytechannel.write((ByteBuffer)((ByteBuffer)a.position(CastUtils.a(l))).slice().limit(CastUtils.a(l1)));
    }

    public ByteBuffer a(long l, long l1)
    {
        return (ByteBuffer)((ByteBuffer)a.position(CastUtils.a(l))).slice().limit(CastUtils.a(l1));
    }

    public void a(long l)
    {
        a.position(CastUtils.a(l));
    }

    public long b()
    {
        return (long)a.position();
    }

    public void close()
    {
    }
}
