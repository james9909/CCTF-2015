// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInput;

// Referenced classes of package org.joda.time.tz:
//            DateTimeZoneBuilder

static final class c
{

    final a a;
    final String b;
    final int c;

    static c a(DataInput datainput)
    {
        return new <init>(<init>(datainput), datainput.readUTF(), (int)DateTimeZoneBuilder.a(datainput));
    }

    public long a(long l, int i, int j)
    {
        return a.a(l, i, j);
    }

    public String a()
    {
        return b;
    }

    public int b()
    {
        return c;
    }

    public long b(long l, int i, int j)
    {
        return a.a(l, i, j);
    }

    public boolean equals(Object obj)
    {
        a a1;
        if (this != obj)
        {
            if (obj instanceof a)
            {
                if (c != (a1 = (c)obj).c || !b.equals(a1.b) || !a.ls(a1.a))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    ( , String s, int i)
    {
        a = ;
        b = s;
        c = i;
    }
}
