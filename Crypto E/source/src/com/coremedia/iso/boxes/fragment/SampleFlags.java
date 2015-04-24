// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

public class SampleFlags
{

    private byte a;
    private byte b;
    private byte c;
    private byte d;
    private byte e;
    private byte f;
    private boolean g;
    private int h;

    public SampleFlags()
    {
    }

    public SampleFlags(ByteBuffer bytebuffer)
    {
        long l = IsoTypeReader.b(bytebuffer);
        a = (byte)(int)((0xfffffffff0000000L & l) >> 28);
        b = (byte)(int)((0xc000000L & l) >> 26);
        c = (byte)(int)((0x3000000L & l) >> 24);
        d = (byte)(int)((0xc00000L & l) >> 22);
        e = (byte)(int)((0x300000L & l) >> 20);
        f = (byte)(int)((0xe0000L & l) >> 17);
        boolean flag;
        if ((0x10000L & l) >> 16 > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        h = (int)(65535L & l);
    }

    public void a(ByteBuffer bytebuffer)
    {
        long l = 0L | (long)(a << 28) | (long)(b << 26) | (long)(c << 24) | (long)(d << 22) | (long)(e << 20) | (long)(f << 17);
        int i;
        if (g)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        IsoTypeWriter.b(bytebuffer, l | (long)(i << 16) | (long)h);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            SampleFlags sampleflags = (SampleFlags)obj;
            if (b != sampleflags.b)
            {
                return false;
            }
            if (a != sampleflags.a)
            {
                return false;
            }
            if (h != sampleflags.h)
            {
                return false;
            }
            if (c != sampleflags.c)
            {
                return false;
            }
            if (e != sampleflags.e)
            {
                return false;
            }
            if (d != sampleflags.d)
            {
                return false;
            }
            if (g != sampleflags.g)
            {
                return false;
            }
            if (f != sampleflags.f)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e) + f);
        int j;
        if (g)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        return 31 * (j + i) + h;
    }

    public String toString()
    {
        return (new StringBuilder("SampleFlags{reserved=")).append(a).append(", isLeading=").append(b).append(", depOn=").append(c).append(", isDepOn=").append(d).append(", hasRedundancy=").append(e).append(", padValue=").append(f).append(", isDiffSample=").append(g).append(", degradPrio=").append(h).append('}').toString();
    }
}
