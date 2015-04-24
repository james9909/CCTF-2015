// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;


public final class HeadersMode extends Enum
{

    public static final HeadersMode a;
    public static final HeadersMode b;
    public static final HeadersMode c;
    public static final HeadersMode d;
    private static final HeadersMode e[];

    private HeadersMode(String s, int i)
    {
        super(s, i);
    }

    public static HeadersMode valueOf(String s)
    {
        return (HeadersMode)Enum.valueOf(com/squareup/okhttp/internal/spdy/HeadersMode, s);
    }

    public static HeadersMode[] values()
    {
        return (HeadersMode[])e.clone();
    }

    public boolean a()
    {
        return this == b || this == c;
    }

    public boolean b()
    {
        return this == a;
    }

    public boolean c()
    {
        return this == c;
    }

    public boolean d()
    {
        return this == b;
    }

    static 
    {
        a = new HeadersMode("SPDY_SYN_STREAM", 0);
        b = new HeadersMode("SPDY_REPLY", 1);
        c = new HeadersMode("SPDY_HEADERS", 2);
        d = new HeadersMode("HTTP_20_HEADERS", 3);
        HeadersMode aheadersmode[] = new HeadersMode[4];
        aheadersmode[0] = a;
        aheadersmode[1] = b;
        aheadersmode[2] = c;
        aheadersmode[3] = d;
        e = aheadersmode;
    }
}
