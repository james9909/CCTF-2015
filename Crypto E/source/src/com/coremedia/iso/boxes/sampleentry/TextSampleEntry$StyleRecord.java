// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
import java.util.Arrays;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            TextSampleEntry

public static class 
{

    int a;
    int b;
    int c;
    int d;
    int e;
    int f[] = {
        255, 255, 255, 255
    };

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.d(bytebuffer);
        b = IsoTypeReader.d(bytebuffer);
        c = IsoTypeReader.d(bytebuffer);
        d = IsoTypeReader.f(bytebuffer);
        e = IsoTypeReader.f(bytebuffer);
        f = new int[4];
        f[0] = IsoTypeReader.f(bytebuffer);
        f[1] = IsoTypeReader.f(bytebuffer);
        f[2] = IsoTypeReader.f(bytebuffer);
        f[3] = IsoTypeReader.f(bytebuffer);
    }

    public void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.d(bytebuffer, d);
        IsoTypeWriter.d(bytebuffer, e);
        IsoTypeWriter.d(bytebuffer, f[0]);
        IsoTypeWriter.d(bytebuffer, f[1]);
        IsoTypeWriter.d(bytebuffer, f[2]);
        IsoTypeWriter.d(bytebuffer, f[3]);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            f f1 = (f)obj;
            if (b != f1.b)
            {
                return false;
            }
            if (d != f1.d)
            {
                return false;
            }
            if (c != f1.c)
            {
                return false;
            }
            if (e != f1.e)
            {
                return false;
            }
            if (a != f1.a)
            {
                return false;
            }
            if (!Arrays.equals(f, f1.f))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e);
        int j;
        if (f != null)
        {
            j = Arrays.hashCode(f);
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public ()
    {
    }
}
