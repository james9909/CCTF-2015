// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;


// Referenced classes of package org.joda.time.format:
//            PeriodFormatterBuilder

static class b
    implements x
{

    private final x a;
    private final x b;

    public int a(int i)
    {
        return a.a(i) + b.a(i);
    }

    public void a(StringBuffer stringbuffer, int i)
    {
        a.a(stringbuffer, i);
        b.a(stringbuffer, i);
    }

    x(x x, x x1)
    {
        a = x;
        b = x1;
    }
}
