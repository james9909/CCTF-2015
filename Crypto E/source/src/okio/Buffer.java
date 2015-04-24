// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// Referenced classes of package okio:
//            BufferedSink, BufferedSource, Util, Segment, 
//            SegmentPool, Source, ByteString, Timeout

public final class Buffer
    implements Cloneable, BufferedSink, BufferedSource
{

    Segment a;
    long b;

    public Buffer()
    {
    }

    public int a(byte abyte0[], int i1, int j1)
    {
        Util.a(abyte0.length, i1, j1);
        Segment segment = a;
        int k1;
        if (segment == null)
        {
            k1 = -1;
        } else
        {
            k1 = Math.min(j1, segment.c - segment.b);
            System.arraycopy(segment.a, segment.b, abyte0, i1, k1);
            segment.b = k1 + segment.b;
            b = b - (long)k1;
            if (segment.b == segment.c)
            {
                a = segment.a();
                SegmentPool.a.a(segment);
                return k1;
            }
        }
        return k1;
    }

    public long a(byte byte0)
    {
        return a(byte0, 0L);
    }

    public long a(byte byte0, long l1)
    {
        if (l1 < 0L)
        {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = a;
        if (segment == null)
        {
            return -1L;
        }
        long l2 = 0L;
        do
        {
            int i1 = segment.c - segment.b;
            if (l1 >= (long)i1)
            {
                l1 -= i1;
            } else
            {
                byte abyte0[] = segment.a;
                long l3 = l1 + (long)segment.b;
                for (long l4 = segment.c; l3 < l4; l3++)
                {
                    if (abyte0[(int)l3] == byte0)
                    {
                        return (l2 + l3) - (long)segment.b;
                    }
                }

                l1 = 0L;
            }
            l2 += i1;
            segment = segment.d;
        } while (segment != a);
        return -1L;
    }

    public long a(Buffer buffer, long l1)
    {
        if (buffer == null)
        {
            throw new IllegalArgumentException("sink == null");
        }
        if (l1 < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l1).toString());
        }
        if (b == 0L)
        {
            return -1L;
        }
        if (l1 > b)
        {
            l1 = b;
        }
        buffer.a_(this, l1);
        return l1;
    }

    public long a(Source source)
    {
        if (source == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        long l1 = 0L;
        do
        {
            long l2 = source.a(this, 2048L);
            if (l2 != -1L)
            {
                l1 += l2;
            } else
            {
                return l1;
            }
        } while (true);
    }

    public String a(long l1, Charset charset)
    {
        Util.a(b, 0L, l1);
        if (charset == null)
        {
            throw new IllegalArgumentException("charset == null");
        }
        if (l1 > 0x7fffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount > Integer.MAX_VALUE: ").append(l1).toString());
        }
        String s1;
        if (l1 == 0L)
        {
            s1 = "";
        } else
        {
            Segment segment = a;
            if (l1 + (long)segment.b > (long)segment.c)
            {
                return new String(f(l1), charset);
            }
            s1 = new String(segment.a, segment.b, (int)l1, charset);
            segment.b = (int)(l1 + (long)segment.b);
            b = b - l1;
            if (segment.b == segment.c)
            {
                a = segment.a();
                SegmentPool.a.a(segment);
                return s1;
            }
        }
        return s1;
    }

    public Buffer a(int i1)
    {
        Segment segment = e(1);
        byte abyte0[] = segment.a;
        int j1 = segment.c;
        segment.c = j1 + 1;
        abyte0[j1] = (byte)i1;
        b = 1L + b;
        return this;
    }

    public Buffer a(String s1)
    {
        int i1;
        int j1;
        if (s1 == null)
        {
            throw new IllegalArgumentException("string == null");
        }
        i1 = s1.length();
        j1 = 0;
_L7:
        char c1;
        int k1;
        Segment segment;
        byte abyte0[];
        int i2;
        int j2;
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_438;
        }
        c1 = s1.charAt(j1);
        if (c1 >= '\200')
        {
            break MISSING_BLOCK_LABEL_182;
        }
        segment = e(1);
        abyte0 = segment.a;
        i2 = segment.c - j1;
        j2 = Math.min(i1, 2048 - i2);
        k1 = j1 + 1;
        abyte0[j1 + i2] = (byte)c1;
_L4:
        if (k1 >= j2) goto _L2; else goto _L1
_L1:
        char c3 = s1.charAt(k1);
        if (c3 < '\200') goto _L3; else goto _L2
_L2:
        int k2 = (k1 + i2) - segment.c;
        segment.c = k2 + segment.c;
        b = b + (long)k2;
_L5:
        j1 = k1;
        continue; /* Loop/switch isn't completed */
_L3:
        int l2 = k1 + 1;
        abyte0[k1 + i2] = (byte)c3;
        k1 = l2;
          goto _L4
        if (c1 < '\u0800')
        {
            a(0xc0 | c1 >> 6);
            a(0x80 | c1 & 0x3f);
            k1 = j1 + 1;
        } else
        if (c1 < '\uD800' || c1 > '\uDFFF')
        {
            a(0xe0 | c1 >> 12);
            a(0x80 | 0x3f & c1 >> 6);
            a(0x80 | c1 & 0x3f);
            k1 = j1 + 1;
        } else
        {
            char c2;
            if (j1 + 1 < i1)
            {
                c2 = s1.charAt(j1 + 1);
            } else
            {
                c2 = '\0';
            }
            if (c1 > '\uDBFF' || c2 < '\uDC00' || c2 > '\uDFFF')
            {
                a(63);
                j1++;
                continue; /* Loop/switch isn't completed */
            }
            int l1 = 0x10000 + ((c1 & 0xffff27ff) << 10 | c2 & 0xffff23ff);
            a(0xf0 | l1 >> 18);
            a(0x80 | 0x3f & l1 >> 12);
            a(0x80 | 0x3f & l1 >> 6);
            a(0x80 | l1 & 0x3f);
            k1 = j1 + 2;
        }
          goto _L5
        return this;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Buffer a(Buffer buffer, long l1, long l2)
    {
        if (buffer == null)
        {
            throw new IllegalArgumentException("out == null");
        }
        Util.a(b, l1, l2);
        if (l2 != 0L)
        {
            Segment segment = a;
            Segment segment1 = buffer.e(1);
            buffer.b = l2 + buffer.b;
            long l3 = l1;
            while (l2 > 0L) 
            {
                for (; l3 >= (long)(segment.c - segment.b); segment = segment.d)
                {
                    l3 -= segment.c - segment.b;
                }

                if (segment1.c == 2048)
                {
                    segment1 = segment1.a(SegmentPool.a.a());
                }
                int i1 = (int)Math.min(Math.min((long)segment.c - (l3 + (long)segment.b), l2), 2048 - segment1.c);
                System.arraycopy(segment.a, segment.b + (int)l3, segment1.a, segment1.c, i1);
                l3 += i1;
                segment1.c = i1 + segment1.c;
                l2 -= i1;
            }
        }
        return this;
    }

    public Buffer a(ByteString bytestring)
    {
        if (bytestring == null)
        {
            throw new IllegalArgumentException("byteString == null");
        } else
        {
            return b(bytestring.b, 0, bytestring.b.length);
        }
    }

    public void a()
    {
    }

    public void a(long l1)
    {
        if (b < l1)
        {
            throw new EOFException();
        } else
        {
            return;
        }
    }

    public void a(byte abyte0[])
    {
        int j1;
        for (int i1 = 0; i1 < abyte0.length; i1 += j1)
        {
            j1 = a(abyte0, i1, abyte0.length - i1);
            if (j1 == -1)
            {
                throw new EOFException();
            }
        }

    }

    public void a_(Buffer buffer, long l1)
    {
        if (buffer == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        if (buffer == this)
        {
            throw new IllegalArgumentException("source == this");
        }
        Util.a(buffer.b, 0L, l1);
_L5:
        if (l1 <= 0L)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        if (l1 >= (long)(buffer.a.c - buffer.a.b)) goto _L2; else goto _L1
_L1:
        Segment segment4;
        if (a != null)
        {
            segment4 = a.e;
        } else
        {
            segment4 = null;
        }
        if (segment4 != null && l1 + (long)(segment4.c - segment4.b) <= 2048L) goto _L4; else goto _L3
_L3:
        buffer.a = buffer.a.a((int)l1);
_L2:
        Segment segment = buffer.a;
        long l2 = segment.c - segment.b;
        buffer.a = segment.a();
        if (a == null)
        {
            a = segment;
            Segment segment1 = a;
            Segment segment2 = a;
            Segment segment3 = a;
            segment2.e = segment3;
            segment1.d = segment3;
        } else
        {
            a.e.a(segment).b();
        }
        buffer.b = buffer.b - l2;
        b = l2 + b;
        l1 -= l2;
        if (true) goto _L5; else goto _L4
_L4:
        buffer.a.a(segment4, (int)l1);
        buffer.b = buffer.b - l1;
        b = l1 + b;
    }

    public byte b(long l1)
    {
        Util.a(b, l1, 1L);
        Segment segment = a;
        do
        {
            int i1 = segment.c - segment.b;
            if (l1 < (long)i1)
            {
                return segment.a[segment.b + (int)l1];
            }
            l1 -= i1;
            segment = segment.d;
        } while (true);
    }

    public Buffer b(int i1)
    {
        Segment segment = e(2);
        byte abyte0[] = segment.a;
        int j1 = segment.c;
        int k1 = j1 + 1;
        abyte0[j1] = (byte)(0xff & i1 >>> 8);
        int l1 = k1 + 1;
        abyte0[k1] = (byte)(i1 & 0xff);
        segment.c = l1;
        b = 2L + b;
        return this;
    }

    public Buffer b(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("source == null");
        } else
        {
            return b(abyte0, 0, abyte0.length);
        }
    }

    public Buffer b(byte abyte0[], int i1, int j1)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("source == null");
        }
        Util.a(abyte0.length, i1, j1);
        for (int k1 = i1 + j1; i1 < k1;)
        {
            Segment segment = e(1);
            int l1 = Math.min(k1 - i1, 2048 - segment.c);
            System.arraycopy(abyte0, i1, segment.a, segment.c, l1);
            i1 += l1;
            segment.c = l1 + segment.c;
        }

        b = b + (long)j1;
        return this;
    }

    public BufferedSink b(String s1)
    {
        return a(s1);
    }

    public BufferedSink b(ByteString bytestring)
    {
        return a(bytestring);
    }

    public Timeout b()
    {
        return Timeout.b;
    }

    public void b(Buffer buffer, long l1)
    {
        if (b < l1)
        {
            buffer.a_(this, b);
            throw new EOFException();
        } else
        {
            buffer.a_(this, l1);
            return;
        }
    }

    public long c()
    {
        return b;
    }

    public Buffer c(int i1)
    {
        Segment segment = e(4);
        byte abyte0[] = segment.a;
        int j1 = segment.c;
        int k1 = j1 + 1;
        abyte0[j1] = (byte)(0xff & i1 >>> 24);
        int l1 = k1 + 1;
        abyte0[k1] = (byte)(0xff & i1 >>> 16);
        int i2 = l1 + 1;
        abyte0[l1] = (byte)(0xff & i1 >>> 8);
        int j2 = i2 + 1;
        abyte0[i2] = (byte)(i1 & 0xff);
        segment.c = j2;
        b = 4L + b;
        return this;
    }

    public BufferedSink c(byte abyte0[])
    {
        return b(abyte0);
    }

    public BufferedSink c(byte abyte0[], int i1, int j1)
    {
        return b(abyte0, i1, j1);
    }

    public ByteString c(long l1)
    {
        return new ByteString(f(l1));
    }

    public Object clone()
    {
        return v();
    }

    public void close()
    {
    }

    public String d(long l1)
    {
        return a(l1, Util.a);
    }

    public Buffer d()
    {
        return this;
    }

    public Buffer d(int i1)
    {
        return c(Util.a(i1));
    }

    public OutputStream e()
    {
        return new OutputStream() {

            final Buffer a;

            public void close()
            {
            }

            public void flush()
            {
            }

            public String toString()
            {
                return (new StringBuilder()).append(this).append(".outputStream()").toString();
            }

            public void write(int i1)
            {
                a.a((byte)i1);
            }

            public void write(byte abyte0[], int i1, int j1)
            {
                a.b(abyte0, i1, j1);
            }

            
            {
                a = Buffer.this;
                super();
            }
        };
    }

    String e(long l1)
    {
        if (l1 > 0L && b(l1 - 1L) == 13)
        {
            String s2 = d(l1 - 1L);
            g(2L);
            return s2;
        } else
        {
            String s1 = d(l1);
            g(1L);
            return s1;
        }
    }

    Segment e(int i1)
    {
        if (i1 < 1 || i1 > 2048)
        {
            throw new IllegalArgumentException();
        }
        Segment segment;
        if (a == null)
        {
            a = SegmentPool.a.a();
            Segment segment1 = a;
            Segment segment2 = a;
            segment = a;
            segment2.e = segment;
            segment1.d = segment;
        } else
        {
            segment = a.e;
            if (i1 + segment.c > 2048)
            {
                return segment.a(SegmentPool.a.a());
            }
        }
        return segment;
    }

    public boolean equals(Object obj)
    {
        long l1 = 0L;
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Buffer))
        {
            return false;
        }
        Buffer buffer = (Buffer)obj;
        if (b != buffer.b)
        {
            return false;
        }
        if (b == l1)
        {
            return true;
        }
        Segment segment = a;
        Segment segment1 = buffer.a;
        int i1 = segment.b;
        int j1 = segment1.b;
        long l2;
        for (; l1 < b; l1 += l2)
        {
            l2 = Math.min(segment.c - i1, segment1.c - j1);
            for (int k1 = 0; (long)k1 < l2;)
            {
                byte abyte0[] = segment.a;
                int i2 = i1 + 1;
                byte byte0 = abyte0[i1];
                byte abyte1[] = segment1.a;
                int j2 = j1 + 1;
                if (byte0 != abyte1[j1])
                {
                    return false;
                }
                k1++;
                j1 = j2;
                i1 = i2;
            }

            if (i1 == segment.c)
            {
                segment = segment.d;
                i1 = segment.b;
            }
            if (j1 == segment1.c)
            {
                segment1 = segment1.d;
                j1 = segment1.b;
            }
        }

        return true;
    }

    public Buffer f()
    {
        return this;
    }

    public BufferedSink f(int i1)
    {
        return d(i1);
    }

    public byte[] f(long l1)
    {
        Util.a(b, 0L, l1);
        if (l1 > 0x7fffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("byteCount > Integer.MAX_VALUE: ").append(l1).toString());
        } else
        {
            byte abyte0[] = new byte[(int)l1];
            a(abyte0);
            return abyte0;
        }
    }

    public BufferedSink g()
    {
        return this;
    }

    public BufferedSink g(int i1)
    {
        return c(i1);
    }

    public void g(long l1)
    {
        do
        {
            if (l1 <= 0L)
            {
                break;
            }
            if (a == null)
            {
                throw new EOFException();
            }
            int i1 = (int)Math.min(l1, a.c - a.b);
            b = b - (long)i1;
            l1 -= i1;
            Segment segment = a;
            segment.b = i1 + segment.b;
            if (a.b == a.c)
            {
                Segment segment1 = a;
                a = segment1.a();
                SegmentPool.a.a(segment1);
            }
        } while (true);
    }

    public Buffer h(long l1)
    {
        Segment segment = e(8);
        byte abyte0[] = segment.a;
        int i1 = segment.c;
        int j1 = i1 + 1;
        abyte0[i1] = (byte)(int)(255L & l1 >>> 56);
        int k1 = j1 + 1;
        abyte0[j1] = (byte)(int)(255L & l1 >>> 48);
        int i2 = k1 + 1;
        abyte0[k1] = (byte)(int)(255L & l1 >>> 40);
        int j2 = i2 + 1;
        abyte0[i2] = (byte)(int)(255L & l1 >>> 32);
        int k2 = j2 + 1;
        abyte0[j2] = (byte)(int)(255L & l1 >>> 24);
        int l2 = k2 + 1;
        abyte0[k2] = (byte)(int)(255L & l1 >>> 16);
        int i3 = l2 + 1;
        abyte0[l2] = (byte)(int)(255L & l1 >>> 8);
        int j3 = i3 + 1;
        abyte0[i3] = (byte)(int)(l1 & 255L);
        segment.c = j3;
        b = 8L + b;
        return this;
    }

    public BufferedSink h(int i1)
    {
        return b(i1);
    }

    public boolean h()
    {
        return b == 0L;
    }

    public int hashCode()
    {
        Segment segment = a;
        if (segment == null)
        {
            return 0;
        }
        int i1 = 1;
        do
        {
            int j1 = segment.b;
            for (int k1 = segment.c; j1 < k1;)
            {
                int l1 = i1 * 31 + segment.a[j1];
                j1++;
                i1 = l1;
            }

            segment = segment.d;
        } while (segment != a);
        return i1;
    }

    public InputStream i()
    {
        return new InputStream() {

            final Buffer a;

            public int available()
            {
                return (int)Math.min(a.b, 0x7fffffffL);
            }

            public void close()
            {
            }

            public int read()
            {
                if (a.b > 0L)
                {
                    return 0xff & a.k();
                } else
                {
                    return -1;
                }
            }

            public int read(byte abyte0[], int i1, int j1)
            {
                return a.a(abyte0, i1, j1);
            }

            public String toString()
            {
                return (new StringBuilder()).append(a).append(".inputStream()").toString();
            }

            
            {
                a = Buffer.this;
                super();
            }
        };
    }

    public BufferedSink i(int i1)
    {
        return a(i1);
    }

    public BufferedSink i(long l1)
    {
        return h(l1);
    }

    public long j()
    {
        long l1 = b;
        if (l1 == 0L)
        {
            l1 = 0L;
        } else
        {
            Segment segment = a.e;
            if (segment.c < 2048)
            {
                return l1 - (long)(segment.c - segment.b);
            }
        }
        return l1;
    }

    public byte k()
    {
        if (b == 0L)
        {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = a;
        int i1 = segment.b;
        int j1 = segment.c;
        byte abyte0[] = segment.a;
        int k1 = i1 + 1;
        byte byte0 = abyte0[i1];
        b = b - 1L;
        if (k1 == j1)
        {
            a = segment.a();
            SegmentPool.a.a(segment);
            return byte0;
        } else
        {
            segment.b = k1;
            return byte0;
        }
    }

    public short l()
    {
        if (b < 2L)
        {
            throw new IllegalStateException((new StringBuilder()).append("size < 2: ").append(b).toString());
        }
        Segment segment = a;
        int i1 = segment.b;
        int j1 = segment.c;
        if (j1 - i1 < 2)
        {
            return (short)((0xff & k()) << 8 | 0xff & k());
        }
        byte abyte0[] = segment.a;
        int k1 = i1 + 1;
        int l1 = (0xff & abyte0[i1]) << 8;
        int i2 = k1 + 1;
        int j2 = l1 | 0xff & abyte0[k1];
        b = b - 2L;
        if (i2 == j1)
        {
            a = segment.a();
            SegmentPool.a.a(segment);
        } else
        {
            segment.b = i2;
        }
        return (short)j2;
    }

    public int m()
    {
        if (b < 4L)
        {
            throw new IllegalStateException((new StringBuilder()).append("size < 4: ").append(b).toString());
        }
        Segment segment = a;
        int i1 = segment.b;
        int j1 = segment.c;
        if (j1 - i1 < 4)
        {
            return (0xff & k()) << 24 | (0xff & k()) << 16 | (0xff & k()) << 8 | 0xff & k();
        }
        byte abyte0[] = segment.a;
        int k1 = i1 + 1;
        int l1 = (0xff & abyte0[i1]) << 24;
        int i2 = k1 + 1;
        int j2 = l1 | (0xff & abyte0[k1]) << 16;
        int k2 = i2 + 1;
        int l2 = j2 | (0xff & abyte0[i2]) << 8;
        int i3 = k2 + 1;
        int j3 = l2 | 0xff & abyte0[k2];
        b = b - 4L;
        if (i3 == j1)
        {
            a = segment.a();
            SegmentPool.a.a(segment);
            return j3;
        } else
        {
            segment.b = i3;
            return j3;
        }
    }

    public long n()
    {
        if (b < 8L)
        {
            throw new IllegalStateException((new StringBuilder()).append("size < 8: ").append(b).toString());
        }
        Segment segment = a;
        int i1 = segment.b;
        int j1 = segment.c;
        if (j1 - i1 < 8)
        {
            return (0xffffffffL & (long)m()) << 32 | 0xffffffffL & (long)m();
        }
        byte abyte0[] = segment.a;
        int k1 = i1 + 1;
        long l1 = (255L & (long)abyte0[i1]) << 56;
        int i2 = k1 + 1;
        long l2 = l1 | (255L & (long)abyte0[k1]) << 48;
        int j2 = i2 + 1;
        long l3 = l2 | (255L & (long)abyte0[i2]) << 40;
        int k2 = j2 + 1;
        long l4 = l3 | (255L & (long)abyte0[j2]) << 32;
        int i3 = k2 + 1;
        long l5 = l4 | (255L & (long)abyte0[k2]) << 24;
        int j3 = i3 + 1;
        long l6 = l5 | (255L & (long)abyte0[i3]) << 16;
        int k3 = j3 + 1;
        long l7 = l6 | (255L & (long)abyte0[j3]) << 8;
        int i4 = k3 + 1;
        long l8 = l7 | 255L & (long)abyte0[k3];
        b = b - 8L;
        if (i4 == j1)
        {
            a = segment.a();
            SegmentPool.a.a(segment);
            return l8;
        } else
        {
            segment.b = i4;
            return l8;
        }
    }

    public short o()
    {
        return Util.a(l());
    }

    public int p()
    {
        return Util.a(m());
    }

    public ByteString q()
    {
        return new ByteString(t());
    }

    public String r()
    {
        String s1;
        try
        {
            s1 = a(b, Util.a);
        }
        catch (EOFException eofexception)
        {
            throw new AssertionError(eofexception);
        }
        return s1;
    }

    public String s()
    {
        long l1 = a((byte)10);
        if (l1 == -1L)
        {
            Buffer buffer = new Buffer();
            a(buffer, 0L, Math.min(32L, b));
            throw new EOFException((new StringBuilder()).append("\\n not found: size=").append(c()).append(" content=").append(buffer.q().c()).append("...").toString());
        } else
        {
            return e(l1);
        }
    }

    public byte[] t()
    {
        byte abyte0[];
        try
        {
            abyte0 = f(b);
        }
        catch (EOFException eofexception)
        {
            throw new AssertionError(eofexception);
        }
        return abyte0;
    }

    public String toString()
    {
        if (b == 0L)
        {
            return "Buffer[size=0]";
        }
        if (b <= 16L)
        {
            ByteString bytestring = v().q();
            Object aobj1[] = new Object[2];
            aobj1[0] = Long.valueOf(b);
            aobj1[1] = bytestring.c();
            return String.format("Buffer[size=%s data=%s]", aobj1);
        }
        MessageDigest messagedigest;
        Object aobj[];
        String s1;
        try
        {
            messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(a.a, a.b, a.c - a.b);
            for (Segment segment = a.d; segment != a; segment = segment.d)
            {
                messagedigest.update(segment.a, segment.b, segment.c - segment.b);
            }

        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new AssertionError();
        }
        aobj = new Object[2];
        aobj[0] = Long.valueOf(b);
        aobj[1] = ByteString.a(messagedigest.digest()).c();
        s1 = String.format("Buffer[size=%s md5=%s]", aobj);
        return s1;
    }

    public void u()
    {
        try
        {
            g(b);
            return;
        }
        catch (EOFException eofexception)
        {
            throw new AssertionError(eofexception);
        }
    }

    public Buffer v()
    {
        Buffer buffer = new Buffer();
        if (b == 0L)
        {
            return buffer;
        }
        buffer.b(a.a, a.b, a.c - a.b);
        for (Segment segment = a.d; segment != a; segment = segment.d)
        {
            buffer.b(segment.a, segment.b, segment.c - segment.b);
        }

        return buffer;
    }

    public BufferedSink w()
    {
        return f();
    }
}
