// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.sampleentry.AbstractSampleEntry;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

public class QuicktimeTextSampleEntry extends AbstractSampleEntry
{

    int b;
    int l;
    int m;
    int n;
    int o;
    long p;
    long q;
    short r;
    short s;
    byte t;
    short u;
    int v;
    int w;
    int x;
    String y;
    int z;

    public QuicktimeTextSampleEntry()
    {
        super("text");
        v = 65535;
        w = 65535;
        x = 65535;
        y = "";
    }

    public void a(Box box)
    {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l1, BoxParser boxparser)
    {
        ByteBuffer bytebuffer1 = ByteBuffer.allocate(CastUtils.a(l1));
        datasource.a(bytebuffer1);
        bytebuffer1.position(6);
        z = IsoTypeReader.d(bytebuffer1);
        b = bytebuffer1.getInt();
        l = bytebuffer1.getInt();
        m = IsoTypeReader.d(bytebuffer1);
        n = IsoTypeReader.d(bytebuffer1);
        o = IsoTypeReader.d(bytebuffer1);
        p = IsoTypeReader.h(bytebuffer1);
        q = IsoTypeReader.h(bytebuffer1);
        r = bytebuffer1.getShort();
        s = bytebuffer1.getShort();
        t = bytebuffer1.get();
        u = bytebuffer1.getShort();
        v = IsoTypeReader.d(bytebuffer1);
        w = IsoTypeReader.d(bytebuffer1);
        x = IsoTypeReader.d(bytebuffer1);
        if (bytebuffer1.remaining() > 0)
        {
            byte abyte0[] = new byte[IsoTypeReader.f(bytebuffer1)];
            bytebuffer1.get(abyte0);
            y = new String(abyte0);
            return;
        } else
        {
            y = null;
            return;
        }
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        int i;
        ByteBuffer bytebuffer;
        if (y != null)
        {
            i = y.length();
        } else
        {
            i = 0;
        }
        bytebuffer = ByteBuffer.allocate(i + 52);
        bytebuffer.position(6);
        IsoTypeWriter.b(bytebuffer, z);
        bytebuffer.putInt(b);
        bytebuffer.putInt(l);
        IsoTypeWriter.b(bytebuffer, m);
        IsoTypeWriter.b(bytebuffer, n);
        IsoTypeWriter.b(bytebuffer, o);
        IsoTypeWriter.a(bytebuffer, p);
        IsoTypeWriter.a(bytebuffer, q);
        bytebuffer.putShort(r);
        bytebuffer.putShort(s);
        bytebuffer.put(t);
        bytebuffer.putShort(u);
        IsoTypeWriter.b(bytebuffer, v);
        IsoTypeWriter.b(bytebuffer, w);
        IsoTypeWriter.b(bytebuffer, x);
        if (y != null)
        {
            IsoTypeWriter.d(bytebuffer, y.length());
            bytebuffer.put(y.getBytes());
        }
        writablebytechannel.write((ByteBuffer)bytebuffer.rewind());
    }

    public void a(List list)
    {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public long f()
    {
        long l1 = 52L + m();
        int i;
        long l2;
        int j;
        if (y != null)
        {
            i = y.length();
        } else
        {
            i = 0;
        }
        l2 = l1 + (long)i;
        if (e || 8L + l2 >= 0x100000000L)
        {
            j = 16;
        } else
        {
            j = 8;
        }
        return l2 + (long)j;
    }
}
