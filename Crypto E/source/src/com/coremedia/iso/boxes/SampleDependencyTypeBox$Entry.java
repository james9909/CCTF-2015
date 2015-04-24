// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            SampleDependencyTypeBox

public static class a
{

    private int a;

    static int a(a a1)
    {
        return a1.a;
    }

    public int a()
    {
        return 3 & a >> 6;
    }

    public int b()
    {
        return 3 & a >> 4;
    }

    public int c()
    {
        return 3 & a >> 2;
    }

    public int d()
    {
        return 3 & a;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (a != a1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{reserved=")).append(a()).append(", sampleDependsOn=").append(b()).append(", sampleIsDependentOn=").append(c()).append(", sampleHasRedundancy=").append(d()).append('}').toString();
    }

    public (int i)
    {
        a = i;
    }
}
