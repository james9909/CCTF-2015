// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Header, Huffman

final class HpackDraft10
{
    static final class Reader
    {

        Header a[];
        int b;
        int c;
        int d;
        private final List e = new ArrayList();
        private final BufferedSource f;
        private int g;
        private int h;

        private void a(int i, Header header)
        {
            e.add(header);
            int j = header.j;
            if (i != -1)
            {
                j -= a[d(i)].j;
            }
            if (j > h)
            {
                e();
                return;
            }
            int k = b((j + d) - h);
            if (i == -1)
            {
                if (1 + c > a.length)
                {
                    Header aheader[] = new Header[2 * a.length];
                    System.arraycopy(a, 0, aheader, a.length, a.length);
                    b = -1 + a.length;
                    a = aheader;
                }
                int i1 = b;
                b = i1 - 1;
                a[i1] = header;
                c = 1 + c;
            } else
            {
                int l = i + (k + d(i));
                a[l] = header;
            }
            d = j + d;
        }

        private int b(int i)
        {
            int j = 0;
            if (i > 0)
            {
                for (int k = -1 + a.length; k >= b && i > 0; k--)
                {
                    i -= a[k].j;
                    d = d - a[k].j;
                    c = -1 + c;
                    j++;
                }

                System.arraycopy(a, 1 + b, a, j + (1 + b), c);
                b = j + b;
            }
            return j;
        }

        private void c(int i)
        {
            if (h(i))
            {
                Header header = HpackDraft10.a()[i];
                e.add(header);
                return;
            }
            int j = d(i - HpackDraft10.a().length);
            if (j < 0 || j > -1 + a.length)
            {
                throw new IOException((new StringBuilder()).append("Header index too large ").append(i + 1).toString());
            } else
            {
                e.add(a[j]);
                return;
            }
        }

        private int d(int i)
        {
            return i + (1 + b);
        }

        private void d()
        {
label0:
            {
                if (h < d)
                {
                    if (h != 0)
                    {
                        break label0;
                    }
                    e();
                }
                return;
            }
            b(d - h);
        }

        private void e()
        {
            e.clear();
            Arrays.fill(a, null);
            b = -1 + a.length;
            c = 0;
            d = 0;
        }

        private void e(int i)
        {
            ByteString bytestring = g(i);
            ByteString bytestring1 = c();
            e.add(new Header(bytestring, bytestring1));
        }

        private void f()
        {
            ByteString bytestring = HpackDraft10.a(c());
            ByteString bytestring1 = c();
            e.add(new Header(bytestring, bytestring1));
        }

        private void f(int i)
        {
            a(-1, new Header(g(i), c()));
        }

        private ByteString g(int i)
        {
            if (h(i))
            {
                return HpackDraft10.a()[i].h;
            } else
            {
                return a[d(i - HpackDraft10.a().length)].h;
            }
        }

        private void g()
        {
            a(-1, new Header(HpackDraft10.a(c()), c()));
        }

        private int h()
        {
            return 0xff & f.k();
        }

        private boolean h(int i)
        {
            return i >= 0 && i <= -1 + HpackDraft10.a().length;
        }

        int a(int i, int j)
        {
            int k = i & j;
            if (k < j)
            {
                return k;
            }
            int l = 0;
            do
            {
                int i1 = h();
                if ((i1 & 0x80) != 0)
                {
                    j += (i1 & 0x7f) << l;
                    l += 7;
                } else
                {
                    return j + (i1 << l);
                }
            } while (true);
        }

        void a()
        {
            while (!f.h()) 
            {
                int i = 0xff & f.k();
                if (i == 128)
                {
                    throw new IOException("index == 0");
                }
                if ((i & 0x80) == 128)
                {
                    c(-1 + a(i, 127));
                } else
                if (i == 64)
                {
                    g();
                } else
                if ((i & 0x40) == 64)
                {
                    f(-1 + a(i, 63));
                } else
                if ((i & 0x20) == 32)
                {
                    h = a(i, 31);
                    if (h < 0 || h > g)
                    {
                        throw new IOException((new StringBuilder()).append("Invalid dynamic table size update ").append(h).toString());
                    }
                    d();
                } else
                if (i == 16 || i == 0)
                {
                    f();
                } else
                {
                    e(-1 + a(i, 15));
                }
            }
        }

        void a(int i)
        {
            g = i;
            h = i;
            d();
        }

        public List b()
        {
            ArrayList arraylist = new ArrayList(e);
            e.clear();
            return arraylist;
        }

        ByteString c()
        {
            int i = h();
            boolean flag;
            int j;
            if ((i & 0x80) == 128)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            j = a(i, 127);
            if (flag)
            {
                return ByteString.a(Huffman.a().a(f.f(j)));
            } else
            {
                return f.c(j);
            }
        }

        Reader(int i, Source source)
        {
            a = new Header[8];
            b = -1 + a.length;
            c = 0;
            d = 0;
            g = i;
            h = i;
            f = Okio.a(source);
        }
    }

    static final class Writer
    {

        private final Buffer a;

        void a(int i, int j, int k)
        {
            if (i < j)
            {
                a.a(k | i);
                return;
            }
            a.a(k | j);
            int l;
            for (l = i - j; l >= 128; l >>>= 7)
            {
                int i1 = l & 0x7f;
                a.a(i1 | 0x80);
            }

            a.a(l);
        }

        void a(List list)
        {
            int i = list.size();
            int j = 0;
            while (j < i) 
            {
                ByteString bytestring = ((Header)list.get(j)).h.d();
                Integer integer = (Integer)HpackDraft10.b().get(bytestring);
                if (integer != null)
                {
                    a(1 + integer.intValue(), 15, 0);
                    a(((Header)list.get(j)).i);
                } else
                {
                    a.a(0);
                    a(bytestring);
                    a(((Header)list.get(j)).i);
                }
                j++;
            }
        }

        void a(ByteString bytestring)
        {
            a(bytestring.e(), 127, 0);
            a.a(bytestring);
        }

        Writer(Buffer buffer)
        {
            a = buffer;
        }
    }


    private static final Header a[];
    private static final Map b = c();

    private HpackDraft10()
    {
    }

    static ByteString a(ByteString bytestring)
    {
        return b(bytestring);
    }

    static Header[] a()
    {
        return a;
    }

    static Map b()
    {
        return b;
    }

    private static ByteString b(ByteString bytestring)
    {
        int i = 0;
        for (int j = bytestring.e(); i < j; i++)
        {
            byte byte0 = bytestring.a(i);
            if (byte0 >= 65 && byte0 <= 90)
            {
                throw new IOException((new StringBuilder()).append("PROTOCOL_ERROR response malformed: mixed case name: ").append(bytestring.a()).toString());
            }
        }

        return bytestring;
    }

    private static Map c()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap(a.length);
        for (int i = 0; i < a.length; i++)
        {
            if (!linkedhashmap.containsKey(a[i].h))
            {
                linkedhashmap.put(a[i].h, Integer.valueOf(i));
            }
        }

        return Collections.unmodifiableMap(linkedhashmap);
    }

    static 
    {
        Header aheader[] = new Header[61];
        aheader[0] = new Header(Header.e, "");
        aheader[1] = new Header(Header.b, "GET");
        aheader[2] = new Header(Header.b, "POST");
        aheader[3] = new Header(Header.c, "/");
        aheader[4] = new Header(Header.c, "/index.html");
        aheader[5] = new Header(Header.d, "http");
        aheader[6] = new Header(Header.d, "https");
        aheader[7] = new Header(Header.a, "200");
        aheader[8] = new Header(Header.a, "204");
        aheader[9] = new Header(Header.a, "206");
        aheader[10] = new Header(Header.a, "304");
        aheader[11] = new Header(Header.a, "400");
        aheader[12] = new Header(Header.a, "404");
        aheader[13] = new Header(Header.a, "500");
        aheader[14] = new Header("accept-charset", "");
        aheader[15] = new Header("accept-encoding", "gzip, deflate");
        aheader[16] = new Header("accept-language", "");
        aheader[17] = new Header("accept-ranges", "");
        aheader[18] = new Header("accept", "");
        aheader[19] = new Header("access-control-allow-origin", "");
        aheader[20] = new Header("age", "");
        aheader[21] = new Header("allow", "");
        aheader[22] = new Header("authorization", "");
        aheader[23] = new Header("cache-control", "");
        aheader[24] = new Header("content-disposition", "");
        aheader[25] = new Header("content-encoding", "");
        aheader[26] = new Header("content-language", "");
        aheader[27] = new Header("content-length", "");
        aheader[28] = new Header("content-location", "");
        aheader[29] = new Header("content-range", "");
        aheader[30] = new Header("content-type", "");
        aheader[31] = new Header("cookie", "");
        aheader[32] = new Header("date", "");
        aheader[33] = new Header("etag", "");
        aheader[34] = new Header("expect", "");
        aheader[35] = new Header("expires", "");
        aheader[36] = new Header("from", "");
        aheader[37] = new Header("host", "");
        aheader[38] = new Header("if-match", "");
        aheader[39] = new Header("if-modified-since", "");
        aheader[40] = new Header("if-none-match", "");
        aheader[41] = new Header("if-range", "");
        aheader[42] = new Header("if-unmodified-since", "");
        aheader[43] = new Header("last-modified", "");
        aheader[44] = new Header("link", "");
        aheader[45] = new Header("location", "");
        aheader[46] = new Header("max-forwards", "");
        aheader[47] = new Header("proxy-authenticate", "");
        aheader[48] = new Header("proxy-authorization", "");
        aheader[49] = new Header("range", "");
        aheader[50] = new Header("referer", "");
        aheader[51] = new Header("refresh", "");
        aheader[52] = new Header("retry-after", "");
        aheader[53] = new Header("server", "");
        aheader[54] = new Header("set-cookie", "");
        aheader[55] = new Header("strict-transport-security", "");
        aheader[56] = new Header("transfer-encoding", "");
        aheader[57] = new Header("user-agent", "");
        aheader[58] = new Header("vary", "");
        aheader[59] = new Header("via", "");
        aheader[60] = new Header("www-authenticate", "");
        a = aheader;
    }
}
