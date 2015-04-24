// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Header, Spdy3

class NameValueBlockReader
{

    private final InflaterSource a;
    private int b;
    private final BufferedSource c;

    public NameValueBlockReader(BufferedSource bufferedsource)
    {
        a = new InflaterSource(new ForwardingSource(bufferedsource) {

            final NameValueBlockReader a;

            public long a(Buffer buffer, long l)
            {
                long l1;
                if (NameValueBlockReader.a(a) != 0)
                {
                    if ((l1 = super.a(buffer, Math.min(l, NameValueBlockReader.a(a)))) != -1L)
                    {
                        NameValueBlockReader.a(a, (int)((long)NameValueBlockReader.a(a) - l1));
                        return l1;
                    }
                }
                return -1L;
            }

            
            {
                a = NameValueBlockReader.this;
                super(source);
            }
        }, new Inflater() {

            final NameValueBlockReader a;

            public int inflate(byte abyte0[], int i, int j)
            {
                int k = super.inflate(abyte0, i, j);
                if (k == 0 && needsDictionary())
                {
                    setDictionary(Spdy3.a);
                    k = super.inflate(abyte0, i, j);
                }
                return k;
            }

            
            {
                a = NameValueBlockReader.this;
                super();
            }
        });
        c = Okio.a(a);
    }

    static int a(NameValueBlockReader namevalueblockreader)
    {
        return namevalueblockreader.b;
    }

    static int a(NameValueBlockReader namevalueblockreader, int i)
    {
        namevalueblockreader.b = i;
        return i;
    }

    private ByteString b()
    {
        int i = c.m();
        return c.c(i);
    }

    private void c()
    {
        if (b > 0)
        {
            a.a();
            if (b != 0)
            {
                throw new IOException((new StringBuilder()).append("compressedLimit > 0: ").append(b).toString());
            }
        }
    }

    public List a(int i)
    {
        b = i + b;
        int j = c.m();
        if (j < 0)
        {
            throw new IOException((new StringBuilder()).append("numberOfPairs < 0: ").append(j).toString());
        }
        if (j > 1024)
        {
            throw new IOException((new StringBuilder()).append("numberOfPairs > 1024: ").append(j).toString());
        }
        ArrayList arraylist = new ArrayList(j);
        for (int k = 0; k < j; k++)
        {
            ByteString bytestring = b().d();
            ByteString bytestring1 = b();
            if (bytestring.e() == 0)
            {
                throw new IOException("name.size == 0");
            }
            arraylist.add(new Header(bytestring, bytestring1));
        }

        c();
        return arraylist;
    }

    public void a()
    {
        c.close();
    }
}
