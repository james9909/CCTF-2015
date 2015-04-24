// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;


// Referenced classes of package org.joda.time.tz:
//            ZoneInfoCompiler

static class imeOfYear
{

    public final String a;
    public final int b;
    public final String c;
    public final String d;
    public final int e;
    public final imeOfYear f;
    private imeOfYear g;

    public String toString()
    {
        String s = (new StringBuilder()).append("[Zone]\nName: ").append(a).append("\n").append("OffsetMillis: ").append(b).append("\n").append("Rules: ").append(c).append("\n").append("Format: ").append(d).append("\n").append("UntilYear: ").append(e).append("\n").append(f).toString();
        if (g == null)
        {
            return s;
        } else
        {
            return (new StringBuilder()).append(s).append("...\n").append(g.toString()).toString();
        }
    }
}
