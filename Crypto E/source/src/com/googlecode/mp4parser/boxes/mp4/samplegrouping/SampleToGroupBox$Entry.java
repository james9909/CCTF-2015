// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;


// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            SampleToGroupBox

public static class b
{

    private long a;
    private int b;

    public long a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            b b1 = (b)obj;
            if (b != b1.b)
            {
                return false;
            }
            if (a != b1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (int)(a ^ a >>> 32) + b;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{sampleCount=")).append(a).append(", groupDescriptionIndex=").append(b).append('}').toString();
    }

    public (long l, int i)
    {
        a = l;
        b = i;
    }
}
