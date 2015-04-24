// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AvcDecoderConfigurationRecord
{

    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public List f;
    public List g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public List l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;

    public AvcDecoderConfigurationRecord()
    {
        f = new ArrayList();
        g = new ArrayList();
        h = true;
        i = 1;
        j = 0;
        k = 0;
        l = new ArrayList();
        m = 63;
        n = 7;
        o = 31;
        p = 31;
        q = 31;
    }

    public AvcDecoderConfigurationRecord(ByteBuffer bytebuffer)
    {
        int i1;
        int j1;
        int k1;
        i1 = 0;
        super();
        f = new ArrayList();
        g = new ArrayList();
        h = true;
        i = 1;
        j = 0;
        k = 0;
        l = new ArrayList();
        m = 63;
        n = 7;
        o = 31;
        p = 31;
        q = 31;
        a = IsoTypeReader.f(bytebuffer);
        b = IsoTypeReader.f(bytebuffer);
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        BitReaderBuffer bitreaderbuffer = new BitReaderBuffer(bytebuffer);
        m = bitreaderbuffer.a(6);
        e = bitreaderbuffer.a(2);
        n = bitreaderbuffer.a(3);
        j1 = bitreaderbuffer.a(5);
        k1 = 0;
_L8:
        if (k1 < j1) goto _L2; else goto _L1
_L1:
        long l1;
        int i2;
        l1 = IsoTypeReader.f(bytebuffer);
        i2 = 0;
_L5:
        if ((long)i2 < l1) goto _L4; else goto _L3
_L3:
        long l2;
        if (bytebuffer.remaining() < 4)
        {
            h = false;
        }
        if (!h || b != 100 && b != 110 && b != 122 && b != 144)
        {
            break MISSING_BLOCK_LABEL_437;
        }
        BitReaderBuffer bitreaderbuffer1 = new BitReaderBuffer(bytebuffer);
        o = bitreaderbuffer1.a(6);
        i = bitreaderbuffer1.a(2);
        p = bitreaderbuffer1.a(5);
        j = bitreaderbuffer1.a(3);
        q = bitreaderbuffer1.a(5);
        k = bitreaderbuffer1.a(3);
        l2 = IsoTypeReader.f(bytebuffer);
_L6:
        if ((long)i1 >= l2)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_404;
_L2:
        byte abyte0[] = new byte[IsoTypeReader.d(bytebuffer)];
        bytebuffer.get(abyte0);
        f.add(abyte0);
        k1++;
        continue; /* Loop/switch isn't completed */
_L4:
        byte abyte1[] = new byte[IsoTypeReader.d(bytebuffer)];
        bytebuffer.get(abyte1);
        g.add(abyte1);
        i2++;
          goto _L5
        byte abyte2[] = new byte[IsoTypeReader.d(bytebuffer)];
        bytebuffer.get(abyte2);
        l.add(abyte2);
        i1++;
          goto _L6
        i = -1;
        j = -1;
        k = -1;
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public long a()
    {
        Iterator iterator;
        long l2;
        long l1 = 5L + 1L;
        iterator = f.iterator();
        l2 = l1;
_L7:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        long l4;
        long l3 = l2 + 1L;
        iterator1 = g.iterator();
        l4 = l3;
_L8:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        if (!h || b != 100 && b != 110 && b != 122 && b != 144) goto _L6; else goto _L5
_L5:
        Iterator iterator2;
        long l5 = 4L + l4;
        iterator2 = l.iterator();
        l4 = l5;
_L9:
        if (iterator2.hasNext())
        {
            break MISSING_BLOCK_LABEL_194;
        }
_L6:
        return l4;
_L2:
        byte abyte0[] = (byte[])iterator.next();
        l2 = l2 + 2L + (long)abyte0.length;
          goto _L7
_L4:
        byte abyte1[] = (byte[])iterator1.next();
        l4 = l4 + 2L + (long)abyte1.length;
          goto _L8
        byte abyte2[] = (byte[])iterator2.next();
        l4 = l4 + 2L + (long)abyte2.length;
          goto _L9
    }

    public void a(ByteBuffer bytebuffer)
    {
        Iterator iterator;
        IsoTypeWriter.d(bytebuffer, a);
        IsoTypeWriter.d(bytebuffer, b);
        IsoTypeWriter.d(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        BitWriterBuffer bitwriterbuffer = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer.a(m, 6);
        bitwriterbuffer.a(e, 2);
        bitwriterbuffer.a(n, 3);
        bitwriterbuffer.a(g.size(), 5);
        iterator = f.iterator();
_L7:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        IsoTypeWriter.d(bytebuffer, g.size());
        iterator1 = g.iterator();
_L8:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        if (!h || b != 100 && b != 110 && b != 122 && b != 144) goto _L6; else goto _L5
_L5:
        Iterator iterator2;
        BitWriterBuffer bitwriterbuffer1 = new BitWriterBuffer(bytebuffer);
        bitwriterbuffer1.a(o, 6);
        bitwriterbuffer1.a(i, 2);
        bitwriterbuffer1.a(p, 5);
        bitwriterbuffer1.a(j, 3);
        bitwriterbuffer1.a(q, 5);
        bitwriterbuffer1.a(k, 3);
        iterator2 = l.iterator();
_L9:
        if (iterator2.hasNext())
        {
            break MISSING_BLOCK_LABEL_330;
        }
_L6:
        return;
_L2:
        byte abyte0[] = (byte[])iterator.next();
        IsoTypeWriter.b(bytebuffer, abyte0.length);
        bytebuffer.put(abyte0);
          goto _L7
_L4:
        byte abyte1[] = (byte[])iterator1.next();
        IsoTypeWriter.b(bytebuffer, abyte1.length);
        bytebuffer.put(abyte1);
          goto _L8
        byte abyte2[] = (byte[])iterator2.next();
        IsoTypeWriter.b(bytebuffer, abyte2.length);
        bytebuffer.put(abyte2);
          goto _L9
    }

    public List b()
    {
        ArrayList arraylist = new ArrayList(f.size());
        Iterator iterator = f.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            arraylist.add(Hex.a((byte[])iterator.next()));
        } while (true);
    }

    public List c()
    {
        ArrayList arraylist = new ArrayList(g.size());
        Iterator iterator = g.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            arraylist.add(Hex.a((byte[])iterator.next()));
        } while (true);
    }

    public String toString()
    {
        return (new StringBuilder("AvcDecoderConfigurationRecord{configurationVersion=")).append(a).append(", avcProfileIndication=").append(b).append(", profileCompatibility=").append(c).append(", avcLevelIndication=").append(d).append(", lengthSizeMinusOne=").append(e).append(", hasExts=").append(h).append(", chromaFormat=").append(i).append(", bitDepthLumaMinus8=").append(j).append(", bitDepthChromaMinus8=").append(k).append(", lengthSizeMinusOnePaddingBits=").append(m).append(", numberOfSequenceParameterSetsPaddingBits=").append(n).append(", chromaFormatPaddingBits=").append(o).append(", bitDepthLumaMinus8PaddingBits=").append(p).append(", bitDepthChromaMinus8PaddingBits=").append(q).append('}').toString();
    }
}
