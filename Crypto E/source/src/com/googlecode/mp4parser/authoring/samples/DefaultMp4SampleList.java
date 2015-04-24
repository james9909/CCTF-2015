// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.TrackBox;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

public class DefaultMp4SampleList extends AbstractList
{

    Container a;
    TrackBox b;
    ByteBuffer c[][];
    int d[];
    long e[];
    long f[][];
    SampleSizeBox g;
    int h;

    int a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        int j = i + 1;
        if (j < d[h] || j >= d[1 + h]) goto _L2; else goto _L1
_L1:
        int k = h;
_L3:
        this;
        JVM INSTR monitorexit ;
        return k;
_L2:
        if (j >= d[h])
        {
            break MISSING_BLOCK_LABEL_105;
        }
        h = 0;
_L4:
        if (d[1 + h] <= j)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        k = h;
          goto _L3
        h = 1 + h;
          goto _L4
        Exception exception;
        exception;
        throw exception;
        h = 1 + h;
_L5:
        if (d[1 + h] <= j)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        k = h;
          goto _L3
        h = 1 + h;
          goto _L5
    }

    public Sample b(int i)
    {
        int j;
        int k;
        long l;
        long al[];
        long l1;
        ByteBuffer abytebuffer[];
        if ((long)i >= g.b())
        {
            throw new IndexOutOfBoundsException();
        }
        j = a(i);
        k = -1 + d[j];
        l = e[CastUtils.a(j)];
        int i1 = i - k;
        al = f[CastUtils.a(j)];
        l1 = al[i1];
        abytebuffer = c[CastUtils.a(j)];
        if (abytebuffer != null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        long l2;
        int j1;
        arraylist = new ArrayList();
        l2 = 0L;
        j1 = 0;
_L7:
        if (j1 < al.length) goto _L4; else goto _L3
_L3:
        arraylist.add(a.a(l + l2, -l2 + al[-1 + al.length] + g.a(-1 + (k + al.length))));
        abytebuffer = (ByteBuffer[])arraylist.toArray(new ByteBuffer[arraylist.size()]);
        c[CastUtils.a(j)] = abytebuffer;
_L2:
        int k1;
        int i2;
        k1 = abytebuffer.length;
        i2 = 0;
_L10:
        if (i2 < k1) goto _L6; else goto _L5
_L5:
        ByteBuffer bytebuffer = null;
_L9:
        return new Sample(g.a(i), bytebuffer, l1) {

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

            
            {
                a = DefaultMp4SampleList.this;
                b = l;
                c = bytebuffer;
                d = l1;
                super();
            }
        };
_L4:
        try
        {
            if ((al[j1] + g.a(j1 + k)) - l2 > 0x10000000L)
            {
                arraylist.add(a.a(l + l2, al[j1] - l2));
                l2 = al[j1];
            }
        }
        catch (IOException ioexception)
        {
            throw new IndexOutOfBoundsException(ioexception.getMessage());
        }
        j1++;
          goto _L7
_L6:
        bytebuffer = abytebuffer[i2];
        if (l1 < (long)bytebuffer.limit()) goto _L9; else goto _L8
_L8:
        l1 -= bytebuffer.limit();
        i2++;
          goto _L10
    }

    public Object get(int i)
    {
        return b(i);
    }

    public int size()
    {
        return CastUtils.a(b.c().b().b());
    }
}
