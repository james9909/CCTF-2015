// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

// Referenced classes of package com.squareup.okhttp:
//            ResponseBody, Cache

static class apshot extends ResponseBody
{

    private final com.squareup.okhttp.internal.ose a;
    private final BufferedSource b;
    private final String c;
    private final String d;

    static com.squareup.okhttp.internal.ose a(apshot apshot)
    {
        return apshot.a;
    }

    public long a()
    {
label0:
        {
            long l = -1L;
            long l1;
            try
            {
                if (d == null)
                {
                    break label0;
                }
                l1 = Long.parseLong(d);
            }
            catch (NumberFormatException numberformatexception)
            {
                return l;
            }
            l = l1;
        }
        return l;
    }

    public BufferedSource b()
    {
        return b;
    }

    public apshot(com.squareup.okhttp.internal. , String s, String s1)
    {
        a = ;
        c = s;
        d = s1;
        b = Okio.a(new ForwardingSource(.(1), ) {

            final com.squareup.okhttp.internal.DiskLruCache.Snapshot a;
            final Cache.CacheResponseBody b;

            public void close()
            {
                a.close();
                super.close();
            }

            
            {
                b = Cache.CacheResponseBody.this;
                a = snapshot;
                super(source);
            }
        });
    }
}
