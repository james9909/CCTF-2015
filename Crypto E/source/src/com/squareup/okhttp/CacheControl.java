// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HeaderParser;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.squareup.okhttp:
//            Headers

public final class CacheControl
{
    public static final class Builder
    {

        boolean a;
        boolean b;
        int c;
        int d;
        int e;
        boolean f;
        boolean g;

        public Builder a()
        {
            a = true;
            return this;
        }

        public Builder a(int i1, TimeUnit timeunit)
        {
            if (i1 < 0)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("maxStale < 0: ").append(i1).toString());
            }
            long l1 = timeunit.toSeconds(i1);
            int j1;
            if (l1 > 0x7fffffffL)
            {
                j1 = 0x7fffffff;
            } else
            {
                j1 = (int)l1;
            }
            d = j1;
            return this;
        }

        public Builder b()
        {
            f = true;
            return this;
        }

        public CacheControl c()
        {
            return new CacheControl(this);
        }

        public Builder()
        {
            c = -1;
            d = -1;
            e = -1;
        }
    }


    public static final CacheControl a = (new Builder()).a().c();
    public static final CacheControl b;
    private final boolean c;
    private final boolean d;
    private final int e;
    private final int f;
    private final boolean g;
    private final boolean h;
    private final int i;
    private final int j;
    private final boolean k;
    private final boolean l;

    private CacheControl(Builder builder)
    {
        c = builder.a;
        d = builder.b;
        e = builder.c;
        f = -1;
        g = false;
        h = false;
        i = builder.d;
        j = builder.e;
        k = builder.f;
        l = builder.g;
    }


    private CacheControl(boolean flag, boolean flag1, int i1, int j1, boolean flag2, boolean flag3, int k1, 
            int l1, boolean flag4, boolean flag5)
    {
        c = flag;
        d = flag1;
        e = i1;
        f = j1;
        g = flag2;
        h = flag3;
        i = k1;
        j = l1;
        k = flag4;
        l = flag5;
    }

    public static CacheControl a(Headers headers)
    {
        boolean flag = false;
        boolean flag1 = false;
        int i1 = -1;
        int j1 = -1;
        boolean flag2 = false;
        boolean flag3 = false;
        int k1 = -1;
        int l1 = -1;
        boolean flag4 = false;
        boolean flag5 = false;
        int i2 = headers.a();
        int j2 = 0;
        while (j2 < i2) 
        {
            if (headers.a(j2).equalsIgnoreCase("Cache-Control") || headers.a(j2).equalsIgnoreCase("Pragma"))
            {
                String s = headers.b(j2);
                int k2 = 0;
                while (k2 < s.length()) 
                {
                    int l2 = HeaderParser.a(s, k2, "=,;");
                    String s1 = s.substring(k2, l2).trim();
                    String s2;
                    if (l2 == s.length() || s.charAt(l2) == ',' || s.charAt(l2) == ';')
                    {
                        k2 = l2 + 1;
                        s2 = null;
                    } else
                    {
                        int i3 = HeaderParser.a(s, l2 + 1);
                        if (i3 < s.length() && s.charAt(i3) == '"')
                        {
                            int k3 = i3 + 1;
                            int l3 = HeaderParser.a(s, k3, "\"");
                            String s4 = s.substring(k3, l3);
                            k2 = l3 + 1;
                            s2 = s4;
                        } else
                        {
                            int j3 = HeaderParser.a(s, i3, ",;");
                            String s3 = s.substring(i3, j3).trim();
                            k2 = j3;
                            s2 = s3;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(s1))
                    {
                        flag = true;
                    } else
                    if ("no-store".equalsIgnoreCase(s1))
                    {
                        flag1 = true;
                    } else
                    if ("max-age".equalsIgnoreCase(s1))
                    {
                        i1 = HeaderParser.b(s2, -1);
                    } else
                    if ("s-maxage".equalsIgnoreCase(s1))
                    {
                        j1 = HeaderParser.b(s2, -1);
                    } else
                    if ("public".equalsIgnoreCase(s1))
                    {
                        flag2 = true;
                    } else
                    if ("must-revalidate".equalsIgnoreCase(s1))
                    {
                        flag3 = true;
                    } else
                    if ("max-stale".equalsIgnoreCase(s1))
                    {
                        k1 = HeaderParser.b(s2, 0x7fffffff);
                    } else
                    if ("min-fresh".equalsIgnoreCase(s1))
                    {
                        l1 = HeaderParser.b(s2, -1);
                    } else
                    if ("only-if-cached".equalsIgnoreCase(s1))
                    {
                        flag4 = true;
                    } else
                    if ("no-transform".equalsIgnoreCase(s1))
                    {
                        flag5 = true;
                    }
                }
            }
            j2++;
        }
        return new CacheControl(flag, flag1, i1, j1, flag2, flag3, k1, l1, flag4, flag5);
    }

    public boolean a()
    {
        return c;
    }

    public boolean b()
    {
        return d;
    }

    public int c()
    {
        return e;
    }

    public int d()
    {
        return f;
    }

    public boolean e()
    {
        return g;
    }

    public boolean f()
    {
        return h;
    }

    public int g()
    {
        return i;
    }

    public int h()
    {
        return j;
    }

    public boolean i()
    {
        return k;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (c)
        {
            stringbuilder.append("no-cache, ");
        }
        if (d)
        {
            stringbuilder.append("no-store, ");
        }
        if (e != -1)
        {
            stringbuilder.append("max-age=").append(e).append(", ");
        }
        if (f != -1)
        {
            stringbuilder.append("s-maxage=").append(f).append(", ");
        }
        if (g)
        {
            stringbuilder.append("public, ");
        }
        if (h)
        {
            stringbuilder.append("must-revalidate, ");
        }
        if (i != -1)
        {
            stringbuilder.append("max-stale=").append(i).append(", ");
        }
        if (j != -1)
        {
            stringbuilder.append("min-fresh=").append(j).append(", ");
        }
        if (k)
        {
            stringbuilder.append("only-if-cached, ");
        }
        if (l)
        {
            stringbuilder.append("no-transform, ");
        }
        if (stringbuilder.length() == 0)
        {
            return "";
        } else
        {
            stringbuilder.delete(-2 + stringbuilder.length(), stringbuilder.length());
            return stringbuilder.toString();
        }
    }

    static 
    {
        b = (new Builder()).b().a(0x7fffffff, TimeUnit.SECONDS).c();
    }
}
