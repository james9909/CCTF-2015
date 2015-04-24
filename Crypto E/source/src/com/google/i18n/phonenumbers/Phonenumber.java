// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Serializable;

public final class Phonenumber
{
    public static class PhoneNumber
        implements Serializable
    {

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

        public PhoneNumber a(int i1)
        {
            a = true;
            b = i1;
            return this;
        }

        public PhoneNumber a(long l1)
        {
            c = true;
            d = l1;
            return this;
        }

        public PhoneNumber a(CountryCodeSource countrycodesource)
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

        public PhoneNumber a(PhoneNumber phonenumber)
        {
            if (phonenumber.a())
            {
                a(phonenumber.b());
            }
            if (phonenumber.c())
            {
                a(phonenumber.d());
            }
            if (phonenumber.e())
            {
                a(phonenumber.f());
            }
            if (phonenumber.h())
            {
                a(phonenumber.i());
            }
            if (phonenumber.j())
            {
                b(phonenumber.k());
            }
            if (phonenumber.l())
            {
                b(phonenumber.m());
            }
            if (phonenumber.o())
            {
                a(phonenumber.p());
            }
            if (phonenumber.r())
            {
                c(phonenumber.s());
            }
            return this;
        }

        public PhoneNumber a(String s1)
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

        public PhoneNumber a(boolean flag)
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

        public PhoneNumber b(int i1)
        {
            i = true;
            j = i1;
            return this;
        }

        public PhoneNumber b(String s1)
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

        public boolean b(PhoneNumber phonenumber)
        {
            boolean flag = true;
            if (phonenumber == null)
            {
                flag = false;
            } else
            if (this != phonenumber && (b != phonenumber.b || d != phonenumber.d || !f.equals(phonenumber.f) || h != phonenumber.h || j != phonenumber.j || !l.equals(phonenumber.l) || n != phonenumber.n || !p.equals(phonenumber.p) || r() != phonenumber.r()))
            {
                return false;
            }
            return flag;
        }

        public PhoneNumber c(String s1)
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
            return (obj instanceof PhoneNumber) && b((PhoneNumber)obj);
        }

        public String f()
        {
            return f;
        }

        public PhoneNumber g()
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

        public PhoneNumber n()
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

        public PhoneNumber q()
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

        public PhoneNumber t()
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

        public PhoneNumber()
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

    public static final class PhoneNumber.CountryCodeSource extends Enum
    {

        public static final PhoneNumber.CountryCodeSource a;
        public static final PhoneNumber.CountryCodeSource b;
        public static final PhoneNumber.CountryCodeSource c;
        public static final PhoneNumber.CountryCodeSource d;
        private static final PhoneNumber.CountryCodeSource e[];

        public static PhoneNumber.CountryCodeSource valueOf(String s)
        {
            return (PhoneNumber.CountryCodeSource)Enum.valueOf(com/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource, s);
        }

        public static PhoneNumber.CountryCodeSource[] values()
        {
            return (PhoneNumber.CountryCodeSource[])e.clone();
        }

        static 
        {
            a = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITH_PLUS_SIGN", 0);
            b = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITH_IDD", 1);
            c = new PhoneNumber.CountryCodeSource("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
            d = new PhoneNumber.CountryCodeSource("FROM_DEFAULT_COUNTRY", 3);
            PhoneNumber.CountryCodeSource acountrycodesource[] = new PhoneNumber.CountryCodeSource[4];
            acountrycodesource[0] = a;
            acountrycodesource[1] = b;
            acountrycodesource[2] = c;
            acountrycodesource[3] = d;
            e = acountrycodesource;
        }

        private PhoneNumber.CountryCodeSource(String s, int i)
        {
            super(s, i);
        }
    }


    private Phonenumber()
    {
    }
}
