// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.net.ProtocolException;
import okio.BufferedSource;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            FrameReader, NameValueBlockReader, HeadersMode, ErrorCode, 
//            Settings, Spdy3

static final class b
    implements FrameReader
{

    private final BufferedSource a;
    private final boolean b;
    private final NameValueBlockReader c;

    private static transient IOException a(String s, Object aobj[])
    {
        throw new IOException(String.format(s, aobj));
    }

    private void a(andler andler, int i, int j)
    {
        boolean flag = true;
        int k = a.m();
        int l = a.m();
        int i1 = k & 0x7fffffff;
        int j1 = l & 0x7fffffff;
        a.l();
        java.util.List list = c.a(j - 10);
        boolean flag1;
        if ((i & 1) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if ((i & 2) == 0)
        {
            flag = false;
        }
        andler.a(flag, flag1, i1, j1, list, HeadersMode.a);
    }

    private void b(andler andler, int i, int j)
    {
        int k = 0x7fffffff & a.m();
        java.util.List list = c.a(j - 4);
        boolean flag;
        if ((i & 1) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        andler.a(false, flag, k, -1, list, HeadersMode.b);
    }

    private void c(andler andler, int i, int j)
    {
        if (j != 8)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw a("TYPE_RST_STREAM length: %d != 8", aobj1);
        }
        int k = 0x7fffffff & a.m();
        int l = a.m();
        ErrorCode errorcode = ErrorCode.a(l);
        if (errorcode == null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(l);
            throw a("TYPE_RST_STREAM unexpected error code: %d", aobj);
        } else
        {
            andler.a(k, errorcode);
            return;
        }
    }

    private void d(andler andler, int i, int j)
    {
        andler.a(false, false, 0x7fffffff & a.m(), -1, c.a(j - 4), HeadersMode.c);
    }

    private void e(andler andler, int i, int j)
    {
        if (j != 8)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw a("TYPE_WINDOW_UPDATE length: %d != 8", aobj1);
        }
        int k = a.m();
        int l = a.m();
        int i1 = k & 0x7fffffff;
        long l1 = l & 0x7fffffff;
        if (l1 == 0L)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Long.valueOf(l1);
            throw a("windowSizeIncrement was 0", aobj);
        } else
        {
            andler.a(i1, l1);
            return;
        }
    }

    private void f(andler andler, int i, int j)
    {
        boolean flag = true;
        if (j != 4)
        {
            Object aobj[] = new Object[flag];
            aobj[0] = Integer.valueOf(j);
            throw a("TYPE_PING length: %d != 4", aobj);
        }
        int k = a.m();
        int l = b;
        int i1;
        if ((k & 1) == flag)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        if (l != i1)
        {
            flag = false;
        }
        andler.a(flag, k, 0);
    }

    private void g(andler andler, int i, int j)
    {
        if (j != 8)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw a("TYPE_GOAWAY length: %d != 8", aobj1);
        }
        int k = 0x7fffffff & a.m();
        int l = a.m();
        ErrorCode errorcode = ErrorCode.c(l);
        if (errorcode == null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(l);
            throw a("TYPE_GOAWAY unexpected error code: %d", aobj);
        } else
        {
            andler.a(k, errorcode, ByteString.a);
            return;
        }
    }

    private void h(andler andler, int i, int j)
    {
        boolean flag = true;
        int k = a.m();
        if (j != 4 + k * 8)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(j);
            aobj[flag] = Integer.valueOf(k);
            throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", aobj);
        }
        Settings settings = new Settings();
        for (int l = 0; l < k; l++)
        {
            int i1 = a.m();
            int j1 = a.m();
            int k1 = (0xff000000 & i1) >>> 24;
            settings.a(i1 & 0xffffff, k1, j1);
        }

        if ((i & 1) == 0)
        {
            flag = false;
        }
        andler.a(flag, settings);
    }

    public void a()
    {
    }

    public boolean a(andler andler)
    {
        int i;
        int j;
        boolean flag;
        int k;
        int l;
        try
        {
            i = a.m();
            j = a.m();
        }
        catch (IOException ioexception)
        {
            return false;
        }
        if ((0x80000000 & i) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = (0xff000000 & j) >>> 24;
        l = j & 0xffffff;
        if (flag)
        {
            int k1 = (0x7fff0000 & i) >>> 16;
            int l1 = 0xffff & i;
            if (k1 != 3)
            {
                throw new ProtocolException((new StringBuilder()).append("version != 3: ").append(k1).toString());
            }
            switch (l1)
            {
            case 5: // '\005'
            default:
                a.g(l);
                return true;

            case 1: // '\001'
                a(andler, k, l);
                return true;

            case 2: // '\002'
                b(andler, k, l);
                return true;

            case 3: // '\003'
                c(andler, k, l);
                return true;

            case 4: // '\004'
                h(andler, k, l);
                return true;

            case 6: // '\006'
                f(andler, k, l);
                return true;

            case 7: // '\007'
                g(andler, k, l);
                return true;

            case 8: // '\b'
                d(andler, k, l);
                return true;

            case 9: // '\t'
                e(andler, k, l);
                break;
            }
            return true;
        }
        int i1 = 0x7fffffff & i;
        int j1 = k & 1;
        boolean flag1 = false;
        if (j1 != 0)
        {
            flag1 = true;
        }
        andler.a(flag1, i1, a, l);
        return true;
    }

    public void close()
    {
        c.a();
    }

    andler(BufferedSource bufferedsource, boolean flag)
    {
        a = bufferedsource;
        c = new NameValueBlockReader(a);
        b = flag;
    }
}
