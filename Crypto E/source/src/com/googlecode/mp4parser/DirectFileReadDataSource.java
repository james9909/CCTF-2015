// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.googlecode.mp4parser.util.CastUtils;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser:
//            DataSource

public class DirectFileReadDataSource
    implements DataSource
{

    private RandomAccessFile a;
    private String b;

    public int a(ByteBuffer bytebuffer)
    {
        int i;
        byte abyte0[];
        int j;
        int k;
        i = bytebuffer.remaining();
        abyte0 = new byte[8192];
        j = 0;
        k = 0;
_L5:
        if (k < i) goto _L2; else goto _L1
_L1:
        if (j < 0 && k == 0)
        {
            k = -1;
        }
        return k;
_L2:
        int l = Math.min(i - k, 8192);
        j = a.read(abyte0, 0, l);
        if (j < 0) goto _L1; else goto _L3
_L3:
        k += j;
        bytebuffer.put(abyte0, 0, j);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public long a()
    {
        return a.length();
    }

    public long a(long l, long l1, WritableByteChannel writablebytechannel)
    {
        return (long)writablebytechannel.write(a(l, l1));
    }

    public ByteBuffer a(long l, long l1)
    {
        a.seek(l);
        byte abyte0[] = new byte[CastUtils.a(l1)];
        a.readFully(abyte0);
        return ByteBuffer.wrap(abyte0);
    }

    public void a(long l)
    {
        a.seek(l);
    }

    public long b()
    {
        return a.getFilePointer();
    }

    public void close()
    {
        a.close();
    }

    public String toString()
    {
        return b;
    }
}
