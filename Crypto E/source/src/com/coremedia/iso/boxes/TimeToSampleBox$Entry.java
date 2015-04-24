// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            TimeToSampleBox

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

    public String toString()
    {
        return (new StringBuilder("Entry{count=")).append(a).append(", delta=").append(b).append('}').toString();
    }

    public (long l, long l1)
    {
        a = l;
        b = l1;
    }
}
