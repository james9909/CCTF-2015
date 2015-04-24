// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;


// Referenced classes of package org.joda.time.format:
//            PeriodFormatterBuilder

static class ffix
    implements ffix
{

    private final String a;
    private final String b;

    public int a(int i)
    {
        String s;
        if (i == 1)
        {
            s = a;
        } else
        {
            s = b;
        }
        return s.length();
    }

    public void a(StringBuffer stringbuffer, int i)
    {
        String s;
        if (i == 1)
        {
            s = a;
        } else
        {
            s = b;
        }
        stringbuffer.append(s);
    }
}
