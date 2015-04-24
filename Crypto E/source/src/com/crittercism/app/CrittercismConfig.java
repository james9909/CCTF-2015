// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.crittercism.app;

import java.util.LinkedList;
import java.util.List;

public class CrittercismConfig
{

    private String a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private String g;
    private String h;
    private String i;
    private List j;
    private List k;

    public CrittercismConfig()
    {
        a = null;
        b = false;
        c = false;
        d = true;
        e = false;
        f = k();
        g = "com.crittercism/dumps";
        h = "Developer Reply";
        i = null;
        j = new LinkedList();
        k = new LinkedList();
    }

    public CrittercismConfig(CrittercismConfig crittercismconfig)
    {
        a = null;
        b = false;
        c = false;
        d = true;
        e = false;
        f = k();
        g = "com.crittercism/dumps";
        h = "Developer Reply";
        i = null;
        j = new LinkedList();
        k = new LinkedList();
        a = crittercismconfig.a;
        b = crittercismconfig.b;
        c = crittercismconfig.c;
        d = crittercismconfig.d;
        e = crittercismconfig.e;
        f = crittercismconfig.f;
        g = crittercismconfig.g;
        h = crittercismconfig.h;
        a(crittercismconfig.j);
        b(crittercismconfig.k);
        i = crittercismconfig.i;
    }

    private static int a(String s)
    {
        int l = 0;
        if (s != null)
        {
            l = s.hashCode();
        }
        return l;
    }

    public static boolean a(String s, String s1)
    {
        if (s == null)
        {
            return s1 == null;
        } else
        {
            return s.equals(s1);
        }
    }

    private static final boolean k()
    {
        return android.os.Build.VERSION.SDK_INT >= 10 && android.os.Build.VERSION.SDK_INT <= 19;
    }

    public List a()
    {
        return b();
    }

    public void a(List list)
    {
        j.clear();
        if (list != null)
        {
            j.addAll(list);
        }
    }

    public List b()
    {
        return new LinkedList(j);
    }

    public void b(List list)
    {
        k.clear();
        if (list != null)
        {
            k.addAll(list);
        }
    }

    public List c()
    {
        return new LinkedList(k);
    }

    public final String d()
    {
        return a;
    }

    public final boolean e()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        CrittercismConfig crittercismconfig;
        if (obj instanceof CrittercismConfig)
        {
            if (b == (crittercismconfig = (CrittercismConfig)obj).b && e == crittercismconfig.e && g() == crittercismconfig.g() && i() == crittercismconfig.i() && f() == crittercismconfig.f() && a(a, crittercismconfig.a) && a(h, crittercismconfig.h) && a(g, crittercismconfig.g) && j.equals(crittercismconfig.j) && k.equals(crittercismconfig.k) && a(i, crittercismconfig.i))
            {
                return true;
            }
        }
        return false;
    }

    public final boolean f()
    {
        return c;
    }

    public final boolean g()
    {
        return d;
    }

    public final boolean h()
    {
        return e;
    }

    public int hashCode()
    {
        int l = 1;
        int i1 = 31 * (31 * (31 * (31 * (31 * (0 + a(a)) + a(h)) + a(g)) + a(i)) + j.hashCode()) + k.hashCode();
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        if (b)
        {
            j1 = l;
        } else
        {
            j1 = 0;
        }
        k1 = j1 + 0 << 1;
        if (e)
        {
            l1 = l;
        } else
        {
            l1 = 0;
        }
        i2 = l1 + k1 << 1;
        if (g())
        {
            j2 = l;
        } else
        {
            j2 = 0;
        }
        k2 = j2 + i2 << 1;
        if (i())
        {
            l2 = l;
        } else
        {
            l2 = 0;
        }
        i3 = l2 + k2 << 1;
        if (!f())
        {
            l = 0;
        }
        j3 = i3 + l;
        return i1 * 31 + Integer.valueOf(j3).hashCode();
    }

    public final boolean i()
    {
        return f;
    }

    public final String j()
    {
        return g;
    }
}
