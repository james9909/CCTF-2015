// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


// Referenced classes of package com.coremedia.iso.boxes:
//            CompositionTimeToSample

public static class b
{

    int a;
    int b;

    public int a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{count=")).append(a).append(", offset=").append(b).append('}').toString();
    }

    public (int i, int j)
    {
        a = i;
        b = j;
    }
}
