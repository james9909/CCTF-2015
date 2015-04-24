// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            ProgressiveDownloadInformationBox

public static class b
{

    long a;
    long b;

    public long a()
    {
        return a;
    }

    public long b()
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
        return 31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder("Entry{rate=")).append(a).append(", initialDelay=").append(b).append('}').toString();
    }

    public (long l, long l1)
    {
        a = l;
        b = l1;
    }
}
