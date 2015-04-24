// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Header, HpackDraft10, Huffman

static final class f
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

    (int i, Source source)
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
