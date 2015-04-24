// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Variant, FrameReader, FrameWriter, HeadersMode, 
//            ErrorCode, Settings

public final class Http20Draft16
    implements Variant
{
    static final class ContinuationSource
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
                Http20Draft16.b().fine(FrameLogger.a(true, c, a, byte0, b));
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

        public ContinuationSource(BufferedSource bufferedsource)
        {
            f = bufferedsource;
        }
    }

    static final class FrameLogger
    {

        private static final String a[] = {
            "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"
        };
        private static final String b[];
        private static final String c[];

        static String a(byte byte0, byte byte1)
        {
            String s;
            if (byte1 == 0)
            {
                s = "";
            } else
            {
                switch (byte0)
                {
                case 5: // '\005'
                default:
                    if (byte1 < b.length)
                    {
                        s = b[byte1];
                    } else
                    {
                        s = c[byte1];
                    }
                    if (byte0 == 5 && (byte1 & 4) != 0)
                    {
                        return s.replace("HEADERS", "PUSH_PROMISE");
                    }
                    break;

                case 4: // '\004'
                case 6: // '\006'
                    if (byte1 == 1)
                    {
                        return "ACK";
                    } else
                    {
                        return c[byte1];
                    }

                case 2: // '\002'
                case 3: // '\003'
                case 7: // '\007'
                case 8: // '\b'
                    return c[byte1];
                }
                if (byte0 == 0 && (byte1 & 0x20) != 0)
                {
                    return s.replace("PRIORITY", "COMPRESSED");
                }
            }
            return s;
        }

        static String a(boolean flag, int i, int j, byte byte0, byte byte1)
        {
            String s;
            String s1;
            Object aobj1[];
            String s2;
            if (byte0 < a.length)
            {
                s = a[byte0];
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = Byte.valueOf(byte0);
                s = String.format("0x%02x", aobj);
            }
            s1 = a(byte0, byte1);
            aobj1 = new Object[5];
            if (flag)
            {
                s2 = "<<";
            } else
            {
                s2 = ">>";
            }
            aobj1[0] = s2;
            aobj1[1] = Integer.valueOf(i);
            aobj1[2] = Integer.valueOf(j);
            aobj1[3] = s;
            aobj1[4] = s1;
            return String.format("%s 0x%08x %5d %-13s %s", aobj1);
        }

        static 
        {
            b = new String[64];
            c = new String[256];
            for (int i = 0; i < c.length; i++)
            {
                String as[] = c;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.toBinaryString(i);
                as[i] = String.format("%8s", aobj).replace(' ', '0');
            }

            b[0] = "";
            b[1] = "END_STREAM";
            int ai[] = {
                1
            };
            b[8] = "PADDED";
            int j = ai.length;
            for (int k = 0; k < j; k++)
            {
                int k2 = ai[k];
                b[k2 | 8] = (new StringBuilder()).append(b[k2]).append("|PADDED").toString();
            }

            b[4] = "END_HEADERS";
            b[32] = "PRIORITY";
            b[36] = "END_HEADERS|PRIORITY";
            int ai1[] = {
                4, 32, 36
            };
            int l = ai1.length;
            int i1 = 0;
            int j1;
            do
            {
                j1 = 0;
                if (i1 >= l)
                {
                    break;
                }
                int k1 = ai1[i1];
                int l1 = ai.length;
                for (int i2 = 0; i2 < l1; i2++)
                {
                    int j2 = ai[i2];
                    b[j2 | k1] = (new StringBuilder()).append(b[j2]).append('|').append(b[k1]).toString();
                    b[8 | (j2 | k1)] = (new StringBuilder()).append(b[j2]).append('|').append(b[k1]).append("|PADDED").toString();
                }

                i1++;
            } while (true);
            for (; j1 < b.length; j1++)
            {
                if (b[j1] == null)
                {
                    b[j1] = c[j1];
                }
            }

        }

        FrameLogger()
        {
        }
    }

    static final class Reader
        implements FrameReader
    {

        final HpackDraft10.Reader a;
        private final BufferedSource b;
        private final ContinuationSource c;
        private final boolean d;

        private List a(int j, short word0, byte byte0, int k)
        {
            ContinuationSource continuationsource = c;
            c.d = j;
            continuationsource.a = j;
            c.e = word0;
            c.b = byte0;
            c.c = k;
            a.a();
            return a.b();
        }

        private void a(FrameReader.Handler handler, int j)
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
            handler.a(j, k & 0x7fffffff, 1 + (0xff & b.k()), flag);
        }

        private void a(FrameReader.Handler handler, int j, byte byte0, int k)
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
                a(handler, k);
                j -= 5;
            }
            handler.a(false, flag, k, -1, a(Http20Draft16.a(j, byte0, word0), word0, byte0, k), HeadersMode.d);
        }

        private void b(FrameReader.Handler handler, int j, byte byte0, int k)
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
            handler.a(flag1, k, b, j1);
            b.g(i1);
        }

        private void c(FrameReader.Handler handler, int j, byte byte0, int k)
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
                a(handler, k);
                return;
            }
        }

        private void d(FrameReader.Handler handler, int j, byte byte0, int k)
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
                handler.a(k, errorcode);
                return;
            }
        }

        private void e(FrameReader.Handler handler, int j, byte byte0, int k)
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
            handler.a();
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
        //                       1 199
        //                       2 175
        //                       3 196
        //                       4 216
        //                       5 235
        //                       6 199;
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
            handler.a(false, settings);
            if (settings.c() >= 0)
            {
                a.a(settings.c());
                return;
            }
            if (true) goto _L14; else goto _L13
_L13:
        }

        private void f(FrameReader.Handler handler, int j, byte byte0, int k)
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
            handler.a(k, 0x7fffffff & b.m(), a(Http20Draft16.a(j - 4, byte0, word0), word0, byte0, k));
        }

        private void g(FrameReader.Handler handler, int j, byte byte0, int k)
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
            handler.a(flag, l, i1);
        }

        private void h(FrameReader.Handler handler, int j, byte byte0, int k)
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
            handler.a(l, errorcode, bytestring);
        }

        private void i(FrameReader.Handler handler, int j, byte byte0, int k)
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
                handler.a(k, l);
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

        public boolean a(FrameReader.Handler handler)
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
                Http20Draft16.b().fine(FrameLogger.a(true, k, j, byte0, byte1));
            }
            switch (byte0)
            {
            default:
                b.g(j);
                return true;

            case 0: // '\0'
                b(handler, j, byte1, k);
                return true;

            case 1: // '\001'
                a(handler, j, byte1, k);
                return true;

            case 2: // '\002'
                c(handler, j, byte1, k);
                return true;

            case 3: // '\003'
                d(handler, j, byte1, k);
                return true;

            case 4: // '\004'
                e(handler, j, byte1, k);
                return true;

            case 5: // '\005'
                f(handler, j, byte1, k);
                return true;

            case 6: // '\006'
                g(handler, j, byte1, k);
                return true;

            case 7: // '\007'
                h(handler, j, byte1, k);
                return true;

            case 8: // '\b'
                i(handler, j, byte1, k);
                break;
            }
            return true;
        }

        public void close()
        {
            b.close();
        }

        Reader(BufferedSource bufferedsource, int j, boolean flag)
        {
            b = bufferedsource;
            d = flag;
            c = new ContinuationSource(b);
            a = new HpackDraft10.Reader(j, c);
        }
    }

    static final class Writer
        implements FrameWriter
    {

        private final BufferedSink a;
        private final boolean b;
        private final Buffer c = new Buffer();
        private final HpackDraft10.Writer d;
        private int e;
        private boolean f;

        private void b(int i, long l)
        {
            while (l > 0L) 
            {
                int j = (int)Math.min(e, l);
                l -= j;
                byte byte0;
                if (l == 0L)
                {
                    byte0 = 4;
                } else
                {
                    byte0 = 0;
                }
                a(i, j, (byte)9, byte0);
                a.a_(c, j);
            }
        }

        public void a()
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_24;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            boolean flag = b;
            if (flag)
            {
                break MISSING_BLOCK_LABEL_36;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            if (Http20Draft16.b().isLoggable(Level.FINE))
            {
                Logger logger = Http20Draft16.b();
                Object aobj[] = new Object[1];
                aobj[0] = Http20Draft16.a().c();
                logger.fine(String.format(">> CONNECTION %s", aobj));
            }
            a.c(Http20Draft16.a().f());
            a.a();
              goto _L1
        }

        void a(int i, byte byte0, Buffer buffer, int j)
        {
            a(i, j, (byte)0, byte0);
            if (j > 0)
            {
                a.a_(buffer, j);
            }
        }

        void a(int i, int j, byte byte0, byte byte1)
        {
            if (Http20Draft16.b().isLoggable(Level.FINE))
            {
                Http20Draft16.b().fine(FrameLogger.a(false, i, j, byte0, byte1));
            }
            if (j > e)
            {
                Object aobj1[] = new Object[2];
                aobj1[0] = Integer.valueOf(e);
                aobj1[1] = Integer.valueOf(j);
                throw Http20Draft16.b("FRAME_SIZE_ERROR length > %d: %d", aobj1);
            }
            if ((0x80000000 & i) != 0)
            {
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(i);
                throw Http20Draft16.b("reserved bit set: %s", aobj);
            } else
            {
                Http20Draft16.a(a, j);
                a.i(byte0 & 0xff);
                a.i(byte1 & 0xff);
                a.g(0x7fffffff & i);
                return;
            }
        }

        public void a(int i, int j, List list)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            long l;
            int k;
            if (c.c() != 0L)
            {
                throw new IllegalStateException();
            }
            d.a(list);
            l = c.c();
            k = (int)Math.min(-4 + e, l);
            byte byte0;
            if (l == (long)k)
            {
                byte0 = 4;
            } else
            {
                byte0 = 0;
            }
            a(i, k + 4, (byte)5, byte0);
            a.g(0x7fffffff & j);
            a.a_(c, k);
            if (l <= (long)k)
            {
                break MISSING_BLOCK_LABEL_153;
            }
            b(i, l - (long)k);
            this;
            JVM INSTR monitorexit ;
        }

        public void a(int i, long l)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
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
                break MISSING_BLOCK_LABEL_62;
            }
            Object aobj[] = new Object[1];
            aobj[0] = Long.valueOf(l);
            throw Http20Draft16.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", aobj);
            a(i, 4, (byte)8, (byte)0);
            a.g((int)l);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(int i, ErrorCode errorcode)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
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
            a(i, 4, (byte)3, (byte)0);
            a.g(errorcode.s);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(int i, ErrorCode errorcode, byte abyte0[])
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (errorcode.s == -1)
            {
                throw Http20Draft16.b("errorCode.httpCode == -1", new Object[0]);
            }
            a(0, 8 + abyte0.length, (byte)7, (byte)0);
            a.g(i);
            a.g(errorcode.s);
            if (abyte0.length > 0)
            {
                a.c(abyte0);
            }
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(Settings settings)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_24;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            e = settings.d(e);
            a(0, 0, (byte)4, (byte)1);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        public void a(boolean flag, int i, int j)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            byte byte0;
            byte0 = 0;
            if (flag)
            {
                byte0 = 1;
            }
            a(0, 8, (byte)6, byte0);
            a.g(i);
            a.g(j);
            a.a();
            this;
            JVM INSTR monitorexit ;
        }

        void a(boolean flag, int i, List list)
        {
            if (f)
            {
                throw new IOException("closed");
            }
            if (c.c() != 0L)
            {
                throw new IllegalStateException();
            }
            d.a(list);
            long l = c.c();
            int j = (int)Math.min(e, l);
            byte byte0;
            if (l == (long)j)
            {
                byte0 = 4;
            } else
            {
                byte0 = 0;
            }
            if (flag)
            {
                byte0 |= 1;
            }
            a(i, j, (byte)1, byte0);
            a.a_(c, j);
            if (l > (long)j)
            {
                b(i, l - (long)j);
            }
        }

        public void a(boolean flag, int i, Buffer buffer, int j)
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            byte byte0;
            byte0 = 0;
            if (flag)
            {
                byte0 = (byte)1;
            }
            a(i, byte0, buffer, j);
            this;
            JVM INSTR monitorexit ;
        }

        public void a(boolean flag, boolean flag1, int i, int j, List list)
        {
            this;
            JVM INSTR monitorenter ;
            if (!flag1)
            {
                break MISSING_BLOCK_LABEL_21;
            }
            throw new UnsupportedOperationException();
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (f)
            {
                throw new IOException("closed");
            }
            a(flag, i, list);
            this;
            JVM INSTR monitorexit ;
        }

        public void b()
        {
            this;
            JVM INSTR monitorenter ;
            if (f)
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
            int i = 0;
            this;
            JVM INSTR monitorenter ;
            if (f)
            {
                throw new IOException("closed");
            }
            break MISSING_BLOCK_LABEL_26;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            a(0, 6 * settings.b(), (byte)4, (byte)0);
_L6:
            if (i >= 10) goto _L2; else goto _L1
_L1:
            if (settings.a(i)) goto _L4; else goto _L3
_L5:
            int j;
            a.h(j);
            a.g(settings.b(i));
              goto _L3
_L2:
            a.a();
            this;
            JVM INSTR monitorexit ;
            return;
_L8:
            j = i;
              goto _L5
_L3:
            i++;
              goto _L6
_L4:
            if (i != 4)
            {
                continue; /* Loop/switch isn't completed */
            }
            j = 3;
              goto _L5
            if (i != 7) goto _L8; else goto _L7
_L7:
            j = 4;
              goto _L5
        }

        public int c()
        {
            return e;
        }

        public void close()
        {
            this;
            JVM INSTR monitorenter ;
            f = true;
            a.close();
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
            b = flag;
            d = new HpackDraft10.Writer(c);
            e = 16384;
        }
    }


    private static final Logger a = Logger.getLogger(com/squareup/okhttp/internal/spdy/Http20Draft16$FrameLogger.getName());
    private static final ByteString b = ByteString.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    public Http20Draft16()
    {
    }

    static int a(int i, byte byte0, short word0)
    {
        return b(i, byte0, word0);
    }

    static int a(BufferedSource bufferedsource)
    {
        return b(bufferedsource);
    }

    static IOException a(String s, Object aobj[])
    {
        return d(s, aobj);
    }

    static ByteString a()
    {
        return b;
    }

    static void a(BufferedSink bufferedsink, int i)
    {
        b(bufferedsink, i);
    }

    private static int b(int i, byte byte0, short word0)
    {
        if ((byte0 & 8) != 0)
        {
            i--;
        }
        if (word0 > i)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Short.valueOf(word0);
            aobj[1] = Integer.valueOf(i);
            throw d("PROTOCOL_ERROR padding %s > remaining length %s", aobj);
        } else
        {
            return (short)(i - word0);
        }
    }

    private static int b(BufferedSource bufferedsource)
    {
        return (0xff & bufferedsource.k()) << 16 | (0xff & bufferedsource.k()) << 8 | 0xff & bufferedsource.k();
    }

    static IllegalArgumentException b(String s, Object aobj[])
    {
        return c(s, aobj);
    }

    static Logger b()
    {
        return a;
    }

    private static void b(BufferedSink bufferedsink, int i)
    {
        bufferedsink.i(0xff & i >>> 16);
        bufferedsink.i(0xff & i >>> 8);
        bufferedsink.i(i & 0xff);
    }

    private static transient IllegalArgumentException c(String s, Object aobj[])
    {
        throw new IllegalArgumentException(String.format(s, aobj));
    }

    private static transient IOException d(String s, Object aobj[])
    {
        throw new IOException(String.format(s, aobj));
    }

    public FrameReader a(BufferedSource bufferedsource, boolean flag)
    {
        return new Reader(bufferedsource, 4096, flag);
    }

    public FrameWriter a(BufferedSink bufferedsink, boolean flag)
    {
        return new Writer(bufferedsink, flag);
    }

}
