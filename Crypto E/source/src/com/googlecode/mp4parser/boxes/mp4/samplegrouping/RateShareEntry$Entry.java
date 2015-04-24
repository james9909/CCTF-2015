// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;


// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            RateShareEntry

public static class b
{

    int a;
    short b;

    public int a()
    {
        return a;
    }

    public short b()
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
            if (a != b1.a)
            {
                return false;
            }
            if (b != b1.b)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * a + b;
    }

    public String toString()
    {
        return (new StringBuilder("{availableBitrate=")).append(a).append(", targetRateShare=").append(b).append('}').toString();
    }

    public (int i, short word0)
    {
        a = i;
        b = word0;
    }
}
