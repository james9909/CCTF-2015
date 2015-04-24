// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.dece;


// Referenced classes of package com.coremedia.iso.boxes.dece:
//            TrickPlayBox

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
        return 0x3f & a;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Entry");
        stringbuilder.append("{picType=").append(a());
        stringbuilder.append(",dependencyLevel=").append(b());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public ()
    {
    }

    public (int i)
    {
        a = i;
    }
}
