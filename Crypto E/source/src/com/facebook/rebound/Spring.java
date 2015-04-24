// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import java.util.Iterator;

// Referenced classes of package com.facebook.rebound:
//            ReentrantCallback, SpringConfig, SpringListener, BaseSpringSystem

public class Spring
{
    static class PhysicsState
    {

        double a;
        double b;

        private PhysicsState()
        {
        }

    }


    private static int a = 0;
    private SpringConfig b;
    private boolean c;
    private final String d;
    private final PhysicsState e = new PhysicsState();
    private final PhysicsState f = new PhysicsState();
    private final PhysicsState g = new PhysicsState();
    private double h;
    private double i;
    private boolean j;
    private double k;
    private double l;
    private ReentrantCallback m;
    private double n;
    private final BaseSpringSystem o;

    Spring(BaseSpringSystem basespringsystem)
    {
        j = true;
        k = 0.0050000000000000001D;
        l = 0.0050000000000000001D;
        m = new ReentrantCallback();
        n = 0.0D;
        if (basespringsystem == null)
        {
            throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
        } else
        {
            o = basespringsystem;
            StringBuilder stringbuilder = (new StringBuilder()).append("spring:");
            int i1 = a;
            a = i1 + 1;
            d = stringbuilder.append(i1).toString();
            a(SpringConfig.c);
            return;
        }
    }

    private double a(PhysicsState physicsstate)
    {
        return Math.abs(i - physicsstate.a);
    }

    private void d(double d1)
    {
        e.a = d1 * e.a + f.a * (1.0D - d1);
        e.b = d1 * e.b + f.b * (1.0D - d1);
    }

    public Spring a(double d1)
    {
        h = d1;
        e.a = d1;
        for (Iterator iterator = m.iterator(); iterator.hasNext(); ((SpringListener)iterator.next()).a(this)) { }
        return this;
    }

    public Spring a(SpringConfig springconfig)
    {
        if (springconfig == null)
        {
            throw new IllegalArgumentException("springConfig is required");
        } else
        {
            b = springconfig;
            return this;
        }
    }

    public Spring a(SpringListener springlistener)
    {
        if (springlistener == null)
        {
            throw new IllegalArgumentException("newListener is required");
        } else
        {
            m.a(springlistener);
            return this;
        }
    }

    public String a()
    {
        return d;
    }

    void a(double d1, double d2)
    {
        boolean flag = g();
        if (!flag || !j)
        {
            if (d2 > 0.064000000000000001D)
            {
                d2 = 0.064000000000000001D;
            }
            n = d2 + n;
            double d3 = b.b;
            double d4 = b.a;
            double d5 = e.a;
            double d6 = e.b;
            double d7 = g.a;
            double d8 = g.b;
            while (n >= 0.001D) 
            {
                n = n - 0.001D;
                if (n < 0.001D)
                {
                    f.a = d5;
                    f.b = d6;
                }
                double d9 = d3 * (i - d7) - d4 * d6;
                double d10 = d5 + 0.5D * (0.001D * d6);
                double d11 = d6 + 0.5D * (0.001D * d9);
                double d12 = d3 * (i - d10) - d4 * d11;
                double d13 = d5 + 0.5D * (0.001D * d11);
                double d14 = d6 + 0.5D * (0.001D * d12);
                double d15 = d3 * (i - d13) - d4 * d14;
                d7 = d5 + 0.001D * d14;
                d8 = d6 + 0.001D * d15;
                double d16 = d3 * (i - d7) - d4 * d8;
                double d17 = 0.16666666666666666D * (d8 + (d6 + 2D * (d11 + d14)));
                double d18 = 0.16666666666666666D * (d16 + (d9 + 2D * (d12 + d15)));
                d5 += d17 * 0.001D;
                d6 += d18 * 0.001D;
            }
            g.a = d7;
            g.b = d8;
            e.a = d5;
            e.b = d6;
            if (n > 0.0D)
            {
                d(n / 0.001D);
            }
            boolean flag1;
            boolean flag2;
            boolean flag3;
            Iterator iterator;
            if (g() || c && d())
            {
                h = i;
                e.a = i;
                c(0.0D);
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            if (j)
            {
                j = false;
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            flag3 = false;
            if (flag1)
            {
                j = true;
                flag3 = true;
            }
            iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                SpringListener springlistener = (SpringListener)iterator.next();
                if (flag2)
                {
                    springlistener.c(this);
                }
                springlistener.a(this);
                if (flag3)
                {
                    springlistener.b(this);
                }
            }
        }
    }

    public double b()
    {
        return e.a;
    }

    public Spring b(double d1)
    {
        if (i != d1 || !g())
        {
            h = b();
            i = d1;
            o.a(a());
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((SpringListener)iterator.next()).d(this);
            }
        }
        return this;
    }

    public double c()
    {
        return i;
    }

    public Spring c(double d1)
    {
        e.b = d1;
        return this;
    }

    public boolean d()
    {
        return h < i && b() > i || h > i && b() < i;
    }

    public boolean e()
    {
        return !g() || !f();
    }

    public boolean f()
    {
        return j;
    }

    public boolean g()
    {
        return Math.abs(e.b) <= k && a(e) <= l;
    }

}
