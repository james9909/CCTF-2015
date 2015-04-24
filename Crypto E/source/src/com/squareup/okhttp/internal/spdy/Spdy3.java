// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Variant, FrameReader, FrameWriter, NameValueBlockReader, 
//            HeadersMode, ErrorCode, Settings, Header

public final class Spdy3
    implements Variant
{
    static final class Reader
        implements FrameReader
    {

        private final BufferedSource a;
        private final boolean b;
        private final NameValueBlockReader c;

        private static transient IOException a(String s, Object aobj[])
        {
            throw new IOException(String.format(s, aobj));
        }

        private void a(FrameReader.Handler handler, int i, int j)
        {
            boolean flag = true;
            int k = a.m();
            int l = a.m();
            int i1 = k & 0x7fffffff;
            int j1 = l & 0x7fffffff;
            a.l();
            List list = c.a(j - 10);
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
            handler.a(flag, flag1, i1, j1, list, HeadersMode.a);
        }

        private void b(FrameReader.Handler handler, int i, int j)
        {
            int k = 0x7fffffff & a.m();
            List list = c.a(j - 4);
            boolean flag;
            if ((i & 1) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            handler.a(false, flag, k, -1, list, HeadersMode.b);
        }

        private void c(FrameReader.Handler handler, int i, int j)
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
                handler.a(k, errorcode);
                return;
            }
        }

        private void d(FrameReader.Handler handler, int i, int j)
        {
            handler.a(false, false, 0x7fffffff & a.m(), -1, c.a(j - 4), HeadersMode.c);
        }

        private void e(FrameReader.Handler handler, int i, int j)
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
                handler.a(i1, l1);
                return;
            }
        }

        private void f(FrameReader.Handler handler, int i, int j)
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
            handler.a(flag, k, 0);
        }

        private void g(FrameReader.Handler handler, int i, int j)
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
                handler.a(k, errorcode, ByteString.a);
                return;
            }
        }

        private void h(FrameReader.Handler handler, int i, int j)
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
            handler.a(flag, settings);
        }

        public void a()
        {
        }

        public boolean a(FrameReader.Handler handler)
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
                    a(handler, k, l);
                    return true;

                case 2: // '\002'
                    b(handler, k, l);
                    return true;

                case 3: // '\003'
                    c(handler, k, l);
                    return true;

                case 4: // '\004'
                    h(handler, k, l);
                    return true;

                case 6: // '\006'
                    f(handler, k, l);
                    return true;

                case 7: // '\007'
                    g(handler, k, l);
                    return true;

                case 8: // '\b'
                    d(handler, k, l);
                    return true;

                case 9: // '\t'
                    e(handler, k, l);
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
            handler.a(flag1, i1, a, l);
            return true;
        }

        public void close()
        {
            c.a();
        }

        Reader(BufferedSource bufferedsource, boolean flag)
        {
            a = bufferedsource;
            c = new NameValueBlockReader(a);
            b = flag;
        }
    }

    static final class Writer
        implements FrameWriter
    {

        private final BufferedSink a;
        private final Buffer b = new Buffer();
        private final BufferedSink c;
        private final boolean d;
        private boolean e;

        private void a(List list)
        {
            if (b.c() != 0L)
            {
                throw new IllegalStateException();
            }
            c.g(list.size());
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                ByteString bytestring = ((Header)list.get(j)).h;
                c.g(bytestring.e());
                c.b(bytestring);
                ByteString bytestring1 = ((Header)list.get(j)).i;
                c.g(bytestring1.e());
                c.b(bytestring1);
            }

            c.a();
        }

        public void a()
        {
            this;
            JVM INSTR monitorenter ;
        }

        public void a(int i, int j, List list)
        {
        }

        void a(int i, int j, Buffer buffer, int k)
        {
            if (e)
            {
                throw new IOException("closed");
            }
            if ((long)k > 0xffffffL)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("FRAME_TOO_LARGE max size is 16Mib: ").append(k).toString());
            }
            a.g(0x7fffffff & i);
            a.g((j & 0xff) << 24 | 0xffffff & k);
            if (k > 0)
            {
                a.a_(buffer, k);
            }
        }

        public void a(int i, long l)
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (l != 0L && l <= 0x7fffffffL)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            throw new IllegalArgumentException((new StringBuilder()).append("windowSizeIncrement must be between 1 and 0x7fffffff: ").append(l).toString());
            a.g(0x80030009);
            a.g(8);
            a.g(i);
            a.g((int)l);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(int i, ErrorCode errorcode)
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_24;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (errorcode.t == -1)
            {
                throw new IllegalArgumentException();
            }
            a.g(0x80030003);
            a.g(8);
            a.g(0x7fffffff & i);
            a.g(errorcode.t);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(int i, ErrorCode errorcode, byte abyte0[])
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (errorcode.u == -1)
            {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
            a.g(0x80030007);
            a.g(8);
            a.g(i);
            a.g(errorcode.u);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(Settings settings)
        {
        }

        public void a(boolean flag, int i, int j)
        {
            int k = 1;
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_29;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            int l = d;
            int i1;
            if ((i & 1) == k)
            {
                i1 = k;
            } else
            {
                i1 = 0;
            }
            if (l == i1)
            {
                k = 0;
            }
              goto _L1
_L3:
            if (flag == k)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            throw new IllegalArgumentException("payload != reply");
            a.g(0x80030006);
            a.g(4);
            a.g(i);
            a.a();
            this;
            JVM INSTR monitorexit ;
            return;
_L1:
            if (true) goto _L3; else goto _L2
_L2:
        }

        public void a(boolean flag, int i, Buffer buffer, int j)
        {
            this;
            JVM INSTR monitorenter ;
            int k;
            if (flag)
            {
                k = 1;
            } else
            {
                k = 0;
            }
            a(i, k, buffer, j);
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public void a(boolean flag, boolean flag1, int i, int j, List list)
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            int k;
            a(list);
            k = (int)(10L + b.c());
            break MISSING_BLOCK_LABEL_46;
_L2:
            l = byte0 | flag2;
            a.g(0x80030001);
            a.g((l & 0xff) << 24 | k & 0xffffff);
            a.g(i & 0x7fffffff);
            a.g(j & 0x7fffffff);
            a.h(0);
            a.a(b);
            a.a();
            this;
            JVM INSTR monitorexit ;
            return;
            boolean flag2;
            byte byte0;
            int l;
            if (flag)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            byte0 = 0;
            if (flag1)
            {
                byte0 = 2;
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void b()
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_24;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void b(Settings settings)
        {
            this;
            JVM INSTR monitorenter ;
            if (e)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_24;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            int i = settings.b();
            int j = 4 + i * 8;
            a.g(0x80030004);
            a.g(0 | j & 0xffffff);
            a.g(i);
            int k = 0;
_L2:
            if (k > 10)
            {
                break MISSING_BLOCK_LABEL_151;
            }
            if (!settings.a(k))
            {
                break MISSING_BLOCK_LABEL_163;
            }
            int l = settings.c(k);
            a.g((l & 0xff) << 24 | k & 0xffffff);
            a.g(settings.b(k));
            break MISSING_BLOCK_LABEL_163;
            a.a();
            this;
            JVM INSTR monitorexit ;
            return;
            k++;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public int c()
        {
            return 16383;
        }

        public void close()
        {
            this;
            JVM INSTR monitorenter ;
            e = true;
            Util.a(a, c);
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        Writer(BufferedSink bufferedsink, boolean flag)
        {
            a = bufferedsink;
            d = flag;
            Deflater deflater = new Deflater();
            deflater.setDictionary(Spdy3.a);
            c = Okio.a(new DeflaterSink(b, deflater));
        }
    }


    static final byte a[];

    public Spdy3()
    {
    }

    public FrameReader a(BufferedSource bufferedsource, boolean flag)
    {
        return new Reader(bufferedsource, flag);
    }

    public FrameWriter a(BufferedSink bufferedsink, boolean flag)
    {
        return new Writer(bufferedsink, flag);
    }

    static 
    {
        try
        {
            a = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Util.d.name());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError();
        }
    }
}
