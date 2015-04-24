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
    public final int c;
    public final String d;
    public final imeOfYear e;
    public final int f;
    public final String g;

    public String toString()
    {
        return (new StringBuilder()).append("[Rule]\nName: ").append(a).append("\n").append("FromYear: ").append(b).append("\n").append("ToYear: ").append(c).append("\n").append("Type: ").append(d).append("\n").append(e).append("SaveMillis: ").append(f).append("\n").append("LetterS: ").append(g).append("\n").toString();
    }
}
