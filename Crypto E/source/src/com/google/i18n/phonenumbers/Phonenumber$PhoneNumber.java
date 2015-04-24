// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Serializable;

// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonenumber

public static class CountryCodeSource.a
    implements Serializable
{
    public static final class CountryCodeSource extends Enum
    {

        public static final CountryCodeSource a;
        public static final CountryCodeSource b;
        public static final CountryCodeSource c;
        public static final CountryCodeSource d;
        private static final CountryCodeSource e[];

        public static CountryCodeSource valueOf(String s1)
        {
            return (CountryCodeSource)Enum.valueOf(com/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource, s1);
        }

        public static CountryCodeSource[] values()
        {
            return (CountryCodeSource[])e.clone();
        }

        static 
        {
            a = new CountryCodeSource("FROM_NUMBER_WITH_PLUS_SIGN", 0);
            b = new CountryCodeSource("FROM_NUMBER_WITH_IDD", 1);
            c = new CountryCodeSource("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
            d = new CountryCodeSource("FROM_DEFAULT_COUNTRY", 3);
            CountryCodeSource acountrycodesource[] = new CountryCodeSource[4];
            acountrycodesource[0] = a;
            acountrycodesource[1] = b;
            acountrycodesource[2] = c;
            acountrycodesource[3] = d;
            e = acountrycodesource;
        }

        private CountryCodeSource(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private boolean a;
    private int b;
    private boolean c;
    private long d;
    private boolean e;
    private String f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private CountryCodeSource n;
    private boolean o;
    private String p;

    public CountryCodeSource a(int i1)
    {
        a = true;
        b = i1;
        return this;
    }

    public b a(long l1)
    {
        c = true;
        d = l1;
        return this;
    }

    public CountryCodeSource a(CountryCodeSource countrycodesource)
    {
        if (countrycodesource == null)
        {
            throw new NullPointerException();
        } else
        {
            m = true;
            n = countrycodesource;
            return this;
        }
    }

    public n a(n n1)
    {
        if (n1.a())
        {
            a(n1.b());
        }
        if (n1.c())
        {
            a(n1.d());
        }
        if (n1.e())
        {
            a(n1.f());
        }
        if (n1.h())
        {
            a(n1.i());
        }
        if (n1.j())
        {
            b(n1.k());
        }
        if (n1.l())
        {
            b(n1.m());
        }
        if (n1.o())
        {
            a(n1.p());
        }
        if (n1.r())
        {
            c(n1.s());
        }
        return this;
    }

    public s a(String s1)
    {
        if (s1 == null)
        {
            throw new NullPointerException();
        } else
        {
            e = true;
            f = s1;
            return this;
        }
    }

    public f a(boolean flag)
    {
        g = true;
        h = flag;
        return this;
    }

    public boolean a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public b b(int i1)
    {
        i = true;
        j = i1;
        return this;
    }

    public j b(String s1)
    {
        if (s1 == null)
        {
            throw new NullPointerException();
        } else
        {
            k = true;
            l = s1;
            return this;
        }
    }

    public boolean b(l l1)
    {
        boolean flag = true;
        if (l1 == null)
        {
            flag = false;
        } else
        if (this != l1 && (b != l1.b || d != l1.d || !f.equals(l1.f) || h != l1.h || j != l1.j || !l.equals(l1.l) || n != l1.n || !p.equals(l1.p) || r() != l1.r()))
        {
            return false;
        }
        return flag;
    }

    public r c(String s1)
    {
        if (s1 == null)
        {
            throw new NullPointerException();
        } else
        {
            o = true;
            p = s1;
            return this;
        }
    }

    public boolean c()
    {
        return c;
    }

    public long d()
    {
        return d;
    }

    public boolean e()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof e) && b((b)obj);
    }

    public String f()
    {
        return f;
    }

    public f g()
    {
        e = false;
        f = "";
        return this;
    }

    public boolean h()
    {
        return g;
    }

    public int hashCode()
    {
        char c1 = '\u04CF';
        int i1 = 53 * (53 * (53 * (2173 + b()) + Long.valueOf(d()).hashCode()) + f().hashCode());
        char c2;
        int j1;
        if (i())
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j1 = 53 * (53 * (53 * (53 * (53 * (c2 + i1) + k()) + m().hashCode()) + p().hashCode()) + s().hashCode());
        if (!r())
        {
            c1 = '\u04D5';
        }
        return j1 + c1;
    }

    public boolean i()
    {
        return h;
    }

    public boolean j()
    {
        return i;
    }

    public int k()
    {
        return j;
    }

    public boolean l()
    {
        return k;
    }

    public String m()
    {
        return l;
    }

    public l n()
    {
        k = false;
        l = "";
        return this;
    }

    public boolean o()
    {
        return m;
    }

    public CountryCodeSource p()
    {
        return n;
    }

    public n q()
    {
        m = false;
        n = CountryCodeSource.a;
        return this;
    }

    public boolean r()
    {
        return o;
    }

    public String s()
    {
        return p;
    }

    public p t()
    {
        o = false;
        p = "";
        return this;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Country Code: ").append(b);
        stringbuilder.append(" National Number: ").append(d);
        if (h() && i())
        {
            stringbuilder.append(" Leading Zero(s): true");
        }
        if (j())
        {
            stringbuilder.append(" Number of leading zeros: ").append(j);
        }
        if (e())
        {
            stringbuilder.append(" Extension: ").append(f);
        }
        if (o())
        {
            stringbuilder.append(" Country Code Source: ").append(n);
        }
        if (r())
        {
            stringbuilder.append(" Preferred Domestic Carrier Code: ").append(p);
        }
        return stringbuilder.toString();
    }

    public CountryCodeSource()
    {
        b = 0;
        d = 0L;
        f = "";
        h = false;
        j = 1;
        l = "";
        p = "";
        n = CountryCodeSource.a;
    }
}
