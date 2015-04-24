// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            TextSampleEntry

public static class 
{

    int a;
    int b;
    int c;
    int d;

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.d(bytebuffer);
        b = IsoTypeReader.d(bytebuffer);
        c = IsoTypeReader.d(bytebuffer);
        d = IsoTypeReader.d(bytebuffer);
    }

    public void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.b(bytebuffer, a);
        IsoTypeWriter.b(bytebuffer, b);
        IsoTypeWriter.b(bytebuffer, c);
        IsoTypeWriter.b(bytebuffer, d);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            d d1 = (d)obj;
            if (c != d1.c)
            {
                return false;
            }
            if (b != d1.b)
            {
                return false;
            }
            if (d != d1.d)
            {
                return false;
            }
            if (a != d1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * a + b) + c) + d;
    }

    public ()
    {
    }
}
