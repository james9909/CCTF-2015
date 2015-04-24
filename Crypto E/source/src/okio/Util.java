// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.nio.charset.Charset;

final class Util
{

    public static final Charset a = Charset.forName("UTF-8");

    private Util()
    {
    }

    public static int a(int i)
    {
        return (0xff000000 & i) >>> 24 | (0xff0000 & i) >>> 8 | (0xff00 & i) << 8 | (i & 0xff) << 24;
    }

    public static short a(short word0)
    {
        int i = 0xffff & word0;
        return (short)((0xff00 & i) >>> 8 | (i & 0xff) << 8);
    }

    public static void a(long l, long l1, long l2)
    {
        if ((l1 | l2) < 0L || l1 > l || l - l1 < l2)
        {
            Object aobj[] = new Object[3];
            aobj[0] = Long.valueOf(l);
            aobj[1] = Long.valueOf(l1);
            aobj[2] = Long.valueOf(l2);
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", aobj));
        } else
        {
            return;
        }
    }

    public static void a(Throwable throwable)
    {
        b(throwable);
    }

    private static void b(Throwable throwable)
    {
        throw throwable;
    }

}
