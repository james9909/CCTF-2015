// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            SampleToChunkBox

public static class c
{

    long a;
    long b;
    long c;

    public long a()
    {
        return a;
    }

    public long b()
    {
        return b;
    }

    public long c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            c c1 = (c)obj;
            if (a != c1.a)
            {
                return false;
            }
            if (c != c1.c)
            {
                return false;
            }
            if (b != c1.b)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder("Entry{firstChunk=")).append(a).append(", samplesPerChunk=").append(b).append(", sampleDescriptionIndex=").append(c).append('}').toString();
    }

    public (long l, long l1, long l2)
    {
        a = l;
        b = l1;
        c = l2;
    }
}
