// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            SubSampleInformationBox

public static class 
{

    private long a;
    private int b;
    private int c;
    private long d;

    public long a()
    {
        return a;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(long l)
    {
        a = l;
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        c = i;
    }

    public void b(long l)
    {
        d = l;
    }

    public int c()
    {
        return c;
    }

    public long d()
    {
        return d;
    }

    public String toString()
    {
        return (new StringBuilder("SubsampleEntry{subsampleSize=")).append(a).append(", subsamplePriority=").append(b).append(", discardable=").append(c).append(", reserved=").append(d).append('}').toString();
    }

    public ()
    {
    }
}
