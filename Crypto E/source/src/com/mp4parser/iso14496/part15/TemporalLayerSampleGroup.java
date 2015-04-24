// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.GroupEntry;
import java.nio.ByteBuffer;

public class TemporalLayerSampleGroup extends GroupEntry
{

    int a;
    int b;
    boolean c;
    int d;
    long e;
    long f;
    int g;
    int h;
    int i;
    int j;
    int k;

    public TemporalLayerSampleGroup()
    {
    }

    public String a()
    {
        return "tscl";
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.f(bytebuffer);
        int l = IsoTypeReader.f(bytebuffer);
        b = (l & 0xc0) >> 6;
        boolean flag;
        if ((l & 0x20) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        d = l & 0x1f;
        e = IsoTypeReader.b(bytebuffer);
        f = IsoTypeReader.n(bytebuffer);
        g = IsoTypeReader.f(bytebuffer);
        h = IsoTypeReader.d(bytebuffer);
        i = IsoTypeReader.d(bytebuffer);
        j = IsoTypeReader.f(bytebuffer);
        k = IsoTypeReader.d(bytebuffer);
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(20);
        IsoTypeWriter.d(bytebuffer, a);
        int l = b << 6;
        byte byte0;
        if (c)
        {
            byte0 = 32;
        } else
        {
            byte0 = 0;
        }
        IsoTypeWriter.d(bytebuffer, byte0 + l + d);
        IsoTypeWriter.b(bytebuffer, e);
        IsoTypeWriter.d(bytebuffer, f);
        IsoTypeWriter.d(bytebuffer, g);
        IsoTypeWriter.b(bytebuffer, h);
        IsoTypeWriter.b(bytebuffer, i);
        IsoTypeWriter.d(bytebuffer, j);
        IsoTypeWriter.b(bytebuffer, k);
        return (ByteBuffer)bytebuffer.rewind();
    }

    public int c()
    {
        return 20;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            TemporalLayerSampleGroup temporallayersamplegroup = (TemporalLayerSampleGroup)obj;
            if (a != temporallayersamplegroup.a)
            {
                return false;
            }
            if (i != temporallayersamplegroup.i)
            {
                return false;
            }
            if (k != temporallayersamplegroup.k)
            {
                return false;
            }
            if (j != temporallayersamplegroup.j)
            {
                return false;
            }
            if (h != temporallayersamplegroup.h)
            {
                return false;
            }
            if (f != temporallayersamplegroup.f)
            {
                return false;
            }
            if (g != temporallayersamplegroup.g)
            {
                return false;
            }
            if (e != temporallayersamplegroup.e)
            {
                return false;
            }
            if (d != temporallayersamplegroup.d)
            {
                return false;
            }
            if (b != temporallayersamplegroup.b)
            {
                return false;
            }
            if (c != temporallayersamplegroup.c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int l = 31 * (31 * a + b);
        int i1;
        if (c)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (i1 + l) + d) + (int)(e ^ e >>> 32)) + (int)(f ^ f >>> 32)) + g) + h) + i) + j) + k;
    }

    public String toString()
    {
        return (new StringBuilder("TemporalLayerSampleGroup{temporalLayerId=")).append(a).append(", tlprofile_space=").append(b).append(", tltier_flag=").append(c).append(", tlprofile_idc=").append(d).append(", tlprofile_compatibility_flags=").append(e).append(", tlconstraint_indicator_flags=").append(f).append(", tllevel_idc=").append(g).append(", tlMaxBitRate=").append(h).append(", tlAvgBitRate=").append(i).append(", tlConstantFrameRate=").append(j).append(", tlAvgFrameRate=").append(k).append('}').toString();
    }
}
