// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.BufferedSource;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            FrameReader, Http20Draft16, HeadersMode, ErrorCode, 
//            Settings

static final class c
    implements FrameReader
{

    final b a;
    private final BufferedSource b;
    private final ationSource c;
    private final boolean d;

    private List a(int j, short word0, byte byte0, int k)
    {
        ationSource ationsource = c;
        c.d = j;
        ationsource.a = j;
        c.e = word0;
        c.b = byte0;
        c.c = k;
        a.();
        return a.();
    }

    private void a( , int j)
    {
        int k = b.m();
        boolean flag;
        if ((0x80000000 & k) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        .(j, k & 0x7fffffff, 1 + (0xff & b.k()), flag);
    }

    private void a(b b1, int j, byte byte0, int k)
    {
        if (k == 0)
        {
            throw Http20Draft16.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean flag;
        short word0;
        if ((byte0 & 1) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((byte0 & 8) != 0)
        {
            word0 = (short)(0xff & b.k());
        } else
        {
            word0 = 0;
        }
        if ((byte0 & 0x20) != 0)
        {
            a(b1, k);
            j -= 5;
        }
        b1.(false, flag, k, -1, a(Http20Draft16.a(j, byte0, word0), word0, byte0, k), HeadersMode.d);
    }

    private void b(a a1, int j, byte byte0, int k)
    {
        boolean flag = true;
        boolean flag1;
        if ((byte0 & 1) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if ((byte0 & 0x20) == 0)
        {
            flag = false;
        }
        if (flag)
        {
            throw Http20Draft16.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        int l = byte0 & 8;
        int i1 = 0;
        if (l != 0)
        {
            i1 = (short)(0xff & b.k());
        }
        int j1 = Http20Draft16.a(j, byte0, i1);
        a1.(flag1, k, b, j1);
        b.g(i1);
    }

    private void c(b b1, int j, byte byte0, int k)
    {
        if (j != 5)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_PRIORITY length: %d != 5", aobj);
        }
        if (k == 0)
        {
            throw Http20Draft16.a("TYPE_PRIORITY streamId == 0", new Object[0]);
        } else
        {
            a(b1, k);
            return;
        }
    }

    private void d(a a1, int j, byte byte0, int k)
    {
        if (j != 4)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_RST_STREAM length: %d != 4", aobj1);
        }
        if (k == 0)
        {
            throw Http20Draft16.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int l = b.m();
        ErrorCode errorcode = ErrorCode.b(l);
        if (errorcode == null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(l);
            throw Http20Draft16.a("TYPE_RST_STREAM unexpected error code: %d", aobj);
        } else
        {
            a1.(k, errorcode);
            return;
        }
    }

    private void e( , int j, byte byte0, int k)
    {
        if (k != 0)
        {
            throw Http20Draft16.a("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((byte0 & 1) == 0) goto _L2; else goto _L1
_L1:
        if (j != 0)
        {
            throw Http20Draft16.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        }
        .();
_L14:
        return;
_L2:
        Settings settings;
        int l;
        if (j % 6 != 0)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_SETTINGS length %% 6 != 0: %s", aobj2);
        }
        settings = new Settings();
        l = 0;
_L9:
        short word0;
        int i1;
        if (l >= j)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        word0 = b.l();
        i1 = b.m();
        word0;
        JVM INSTR tableswitch 1 6: default 152
    //                   1 199
    //                   2 175
    //                   3 196
    //                   4 216
    //                   5 235
    //                   6 199;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L4
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        Object aobj1[] = new Object[1];
        aobj1[0] = Short.valueOf(word0);
        throw Http20Draft16.a("PROTOCOL_ERROR invalid settings id: %s", aobj1);
_L5:
        if (i1 != 0 && i1 != 1)
        {
            throw Http20Draft16.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
        }
        break; /* Loop/switch isn't completed */
_L6:
        word0 = 4;
_L11:
        settings.a(word0, 0, i1);
        l += 6;
          goto _L9
_L7:
        word0 = 7;
        if (i1 >= 0) goto _L11; else goto _L10
_L10:
        throw Http20Draft16.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
_L8:
        if (i1 >= 16384 && i1 <= 0xffffff) goto _L11; else goto _L12
_L12:
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        throw Http20Draft16.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", aobj);
        .(false, settings);
        if (settings.c() >= 0)
        {
            a.(settings.c());
            return;
        }
        if (true) goto _L14; else goto _L13
_L13:
    }

    private void f( , int j, byte byte0, int k)
    {
        if (k == 0)
        {
            throw Http20Draft16.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        int l = byte0 & 8;
        short word0 = 0;
        if (l != 0)
        {
            word0 = (short)(0xff & b.k());
        }
        .(k, 0x7fffffff & b.m(), a(Http20Draft16.a(j - 4, byte0, word0), word0, byte0, k));
    }

    private void g(a a1, int j, byte byte0, int k)
    {
        boolean flag = true;
        if (j != 8)
        {
            Object aobj[] = new Object[flag];
            aobj[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_PING length != 8: %s", aobj);
        }
        if (k != 0)
        {
            throw Http20Draft16.a("TYPE_PING streamId != 0", new Object[0]);
        }
        int l = b.m();
        int i1 = b.m();
        if ((byte0 & 1) == 0)
        {
            flag = false;
        }
        a1.(flag, l, i1);
    }

    private void h( , int j, byte byte0, int k)
    {
        if (j < 8)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_GOAWAY length < 8: %s", aobj1);
        }
        if (k != 0)
        {
            throw Http20Draft16.a("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int l = b.m();
        int i1 = b.m();
        int j1 = j - 8;
        ErrorCode errorcode = ErrorCode.b(i1);
        if (errorcode == null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i1);
            throw Http20Draft16.a("TYPE_GOAWAY unexpected error code: %d", aobj);
        }
        ByteString bytestring = ByteString.a;
        if (j1 > 0)
        {
            bytestring = b.c(j1);
        }
        .(l, errorcode, bytestring);
    }

    private void i( , int j, byte byte0, int k)
    {
        if (j != 4)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            throw Http20Draft16.a("TYPE_WINDOW_UPDATE length !=4: %s", aobj1);
        }
        long l = 0x7fffffffL & (long)b.m();
        if (l == 0L)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Long.valueOf(l);
            throw Http20Draft16.a("windowSizeIncrement was 0", aobj);
        } else
        {
            .(k, l);
            return;
        }
    }

    public void a()
    {
        if (!d)
        {
            ByteString bytestring = b.c(Http20Draft16.a().e());
            if (Http20Draft16.b().isLoggable(Level.FINE))
            {
                Logger logger = Http20Draft16.b();
                Object aobj1[] = new Object[1];
                aobj1[0] = bytestring.c();
                logger.fine(String.format("<< CONNECTION %s", aobj1));
            }
            if (!Http20Draft16.a().equals(bytestring))
            {
                Object aobj[] = new Object[1];
                aobj[0] = bytestring.a();
                throw Http20Draft16.a("Expected a connection header but was %s", aobj);
            }
        }
    }

    public boolean a(b b1)
    {
        int j;
        try
        {
            b.a(9L);
        }
        catch (IOException ioexception)
        {
            return false;
        }
        j = Http20Draft16.a(b);
        if (j < 0 || j > 16384)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            throw Http20Draft16.a("FRAME_SIZE_ERROR: %s", aobj);
        }
        byte byte0 = (byte)(0xff & b.k());
        byte byte1 = (byte)(0xff & b.k());
        int k = 0x7fffffff & b.m();
        if (Http20Draft16.b().isLoggable(Level.FINE))
        {
            Http20Draft16.b().fine(gger.a(true, k, j, byte0, byte1));
        }
        switch (byte0)
        {
        default:
            b.g(j);
            return true;

        case 0: // '\0'
            b(b1, j, byte1, k);
            return true;

        case 1: // '\001'
            a(b1, j, byte1, k);
            return true;

        case 2: // '\002'
            c(b1, j, byte1, k);
            return true;

        case 3: // '\003'
            d(b1, j, byte1, k);
            return true;

        case 4: // '\004'
            e(b1, j, byte1, k);
            return true;

        case 5: // '\005'
            f(b1, j, byte1, k);
            return true;

        case 6: // '\006'
            g(b1, j, byte1, k);
            return true;

        case 7: // '\007'
            h(b1, j, byte1, k);
            return true;

        case 8: // '\b'
            i(b1, j, byte1, k);
            break;
        }
        return true;
    }

    public void close()
    {
        b.close();
    }

    ationSource(BufferedSource bufferedsource, int j, boolean flag)
    {
        b = bufferedsource;
        d = flag;
        c = new ationSource(b);
        a = new init>(j, c);
    }
}
