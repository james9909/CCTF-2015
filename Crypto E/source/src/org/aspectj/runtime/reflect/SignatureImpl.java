// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import org.aspectj.lang.Signature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            StringMaker, Factory

abstract class SignatureImpl
    implements Signature
{
    static interface Cache
    {

        public abstract String a(int i1);

        public abstract void a(int i1, String s);
    }

    static final class CacheImpl
        implements Cache
    {

        private SoftReference a;

        private String[] a()
        {
            return (String[])(String[])a.get();
        }

        private String[] b()
        {
            String as[] = new String[3];
            a = new SoftReference(as);
            return as;
        }

        public String a(int i1)
        {
            String as[] = a();
            if (as == null)
            {
                return null;
            } else
            {
                return as[i1];
            }
        }

        public void a(int i1, String s)
        {
            String as[] = a();
            if (as == null)
            {
                as = b();
            }
            as[i1] = s;
        }

        public CacheImpl()
        {
            b();
        }
    }


    private static boolean a = true;
    static String k[] = new String[0];
    static Class l[] = new Class[0];
    private String b;
    int e;
    String f;
    String g;
    Class h;
    Cache i;
    ClassLoader j;

    SignatureImpl(int i1, String s, Class class1)
    {
        e = -1;
        j = null;
        e = i1;
        f = s;
        h = class1;
    }

    private ClassLoader b()
    {
        if (j == null)
        {
            j = getClass().getClassLoader();
        }
        return j;
    }

    public String a()
    {
        if (f == null)
        {
            f = a(1);
        }
        return f;
    }

    String a(int i1)
    {
        int j1 = 0;
        int k1 = b.indexOf('-');
        do
        {
            int l1 = i1 - 1;
            if (i1 <= 0)
            {
                break;
            }
            j1 = k1 + 1;
            k1 = b.indexOf('-', j1);
            i1 = l1;
        } while (true);
        if (k1 == -1)
        {
            k1 = b.length();
        }
        return b.substring(j1, k1);
    }

    protected abstract String a(StringMaker stringmaker);

    int b(int i1)
    {
        return Integer.parseInt(a(i1), 16);
    }

    String b(StringMaker stringmaker)
    {
        boolean flag = a;
        String s = null;
        if (flag)
        {
            if (i == null)
            {
                try
                {
                    i = new CacheImpl();
                }
                catch (Throwable throwable)
                {
                    a = false;
                    s = null;
                }
            } else
            {
                s = i.a(stringmaker.i);
            }
        }
        if (s == null)
        {
            s = a(stringmaker);
        }
        if (a)
        {
            i.a(stringmaker.i, s);
        }
        return s;
    }

    Class c(int i1)
    {
        return Factory.a(a(i1), b());
    }

    Class[] d(int i1)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(a(i1), ":");
        int j1 = stringtokenizer.countTokens();
        Class aclass[] = new Class[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            aclass[k1] = Factory.a(stringtokenizer.nextToken(), b());
        }

        return aclass;
    }

    public int e()
    {
        if (e == -1)
        {
            e = b(0);
        }
        return e;
    }

    public Class f()
    {
        if (h == null)
        {
            h = c(2);
        }
        return h;
    }

    public String g()
    {
        if (g == null)
        {
            g = f().getName();
        }
        return g;
    }

    public final String toString()
    {
        return b(StringMaker.k);
    }

}
