// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Http20Draft16

static final class f
    implements Source
{

    int a;
    byte b;
    int c;
    int d;
    short e;
    private final BufferedSource f;

    private void a()
    {
        int i = c;
        int j = Http20Draft16.a(f);
        d = j;
        a = j;
        byte byte0 = (byte)(0xff & f.k());
        b = (byte)(0xff & f.k());
        if (Http20Draft16.b().isLoggable(Level.FINE))
        {
            Http20Draft16.b().fine(f(true, c, a, byte0, b));
        }
        c = 0x7fffffff & f.m();
        if (byte0 != 9)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Byte.valueOf(byte0);
            throw Http20Draft16.a("%s != TYPE_CONTINUATION", aobj);
        }
        if (c != i)
        {
            throw Http20Draft16.a("TYPE_CONTINUATION streamId changed", new Object[0]);
        } else
        {
            return;
        }
    }

    public long a(Buffer buffer, long l)
    {
_L7:
        if (d != 0) goto _L2; else goto _L1
_L1:
        f.g(e);
        e = 0;
        if ((4 & b) == 0) goto _L4; else goto _L3
_L3:
        return -1L;
_L4:
        a();
        continue; /* Loop/switch isn't completed */
_L2:
        long l1 = f.a(buffer, Math.min(l, d));
        if (l1 == -1L) goto _L3; else goto _L5
_L5:
        d = (int)((long)d - l1);
        return l1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Timeout b()
    {
        return f.b();
    }

    public void close()
    {
    }

    public (BufferedSource bufferedsource)
    {
        f = bufferedsource;
    }
}
