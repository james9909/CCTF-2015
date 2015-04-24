// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class Scroller
{

    private static float B;
    private static float C;
    private static float u = (float)(Math.log(0.75D) / Math.log(0.90000000000000002D));
    private static float v = 800F;
    private static float w;
    private static float x;
    private static final float y[];
    private final float A;
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private long l;
    private int m;
    private float n;
    private float o;
    private float p;
    private boolean q;
    private Interpolator r;
    private boolean s;
    private float t;
    private float z;

    public Scroller(Context context, Interpolator interpolator)
    {
        this(context, interpolator, true);
    }

    public Scroller(Context context, Interpolator interpolator, boolean flag)
    {
        q = true;
        r = interpolator;
        A = 160F * context.getResources().getDisplayMetrics().density;
        z = b(ViewConfiguration.getScrollFriction());
        s = flag;
    }

    static float a(float f1)
    {
        float f2 = f1 * B;
        float f3;
        if (f2 < 1.0F)
        {
            f3 = f2 - (1.0F - (float)Math.exp(-f2));
        } else
        {
            f3 = 0.3678795F + (1.0F - (float)Math.exp(1.0F - f2)) * (1.0F - 0.3678795F);
        }
        return f3 * C;
    }

    private float b(float f1)
    {
        return f1 * (386.0878F * A);
    }

    public void a(int i1, int j1, int k1, int l1, int i2)
    {
        a = 0;
        q = false;
        m = i2;
        l = AnimationUtils.currentAnimationTimeMillis();
        b = i1;
        c = j1;
        d = i1 + k1;
        e = j1 + l1;
        o = k1;
        p = l1;
        n = 1.0F / (float)m;
    }

    public void a(int i1, int j1, int k1, int l1, int i2, int j2, int k2, 
            int l2)
    {
        if (s && !q)
        {
            float f4 = c();
            float f5 = d - b;
            float f6 = e - c;
            float f7 = FloatMath.sqrt(f5 * f5 + f6 * f6);
            float f8 = f5 / f7;
            float f9 = f6 / f7;
            float f10 = f8 * f4;
            float f11 = f4 * f9;
            if (Math.signum(k1) == Math.signum(f10) && Math.signum(l1) == Math.signum(f11))
            {
                k1 = (int)(f10 + (float)k1);
                l1 = (int)(f11 + (float)l1);
            }
        }
        a = 1;
        q = false;
        float f1 = FloatMath.sqrt(k1 * k1 + l1 * l1);
        t = f1;
        double d1 = Math.log((f1 * w) / v);
        m = (int)(1000D * Math.exp(d1 / ((double)u - 1.0D)));
        l = AnimationUtils.currentAnimationTimeMillis();
        b = i1;
        c = j1;
        float f2;
        float f3;
        int i3;
        if (f1 == 0.0F)
        {
            f2 = 1.0F;
        } else
        {
            f2 = (float)k1 / f1;
        }
        if (f1 == 0.0F)
        {
            f3 = 1.0F;
        } else
        {
            f3 = (float)l1 / f1;
        }
        i3 = (int)((double)v * Math.exp(d1 * ((double)u / ((double)u - 1.0D))));
        f = i2;
        g = j2;
        h = k2;
        i = l2;
        d = i1 + Math.round(f2 * (float)i3);
        d = Math.min(d, g);
        d = Math.max(d, f);
        e = j1 + Math.round(f3 * (float)i3);
        e = Math.min(e, i);
        e = Math.max(e, h);
    }

    public final void a(boolean flag)
    {
        q = flag;
    }

    public final boolean a()
    {
        return q;
    }

    public final int b()
    {
        return k;
    }

    public float c()
    {
        return t - (z * (float)g()) / 2000F;
    }

    public final int d()
    {
        return c;
    }

    public final int e()
    {
        return e;
    }

    public boolean f()
    {
        int i1;
        if (q)
        {
            return false;
        }
        i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - l);
        if (i1 >= m) goto _L2; else goto _L1
_L1:
        a;
        JVM INSTR tableswitch 0 1: default 52
    //                   0 54
    //                   1 134;
           goto _L3 _L4 _L5
_L3:
        return true;
_L4:
        float f7 = (float)i1 * n;
        float f8;
        if (r == null)
        {
            f8 = a(f7);
        } else
        {
            f8 = r.getInterpolation(f7);
        }
        j = b + Math.round(f8 * o);
        k = c + Math.round(f8 * p);
        continue; /* Loop/switch isn't completed */
_L5:
        float f1 = (float)i1 / (float)m;
        int j1 = (int)(100F * f1);
        float f2 = (float)j1 / 100F;
        float f3 = (float)(j1 + 1) / 100F;
        float f4 = y[j1];
        float f5 = y[j1 + 1];
        float f6 = f4 + ((f1 - f2) / (f3 - f2)) * (f5 - f4);
        j = b + Math.round(f6 * (float)(d - b));
        j = Math.min(j, g);
        j = Math.max(j, f);
        k = c + Math.round(f6 * (float)(e - c));
        k = Math.min(k, i);
        k = Math.max(k, h);
        if (j == d && k == e)
        {
            q = true;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        j = d;
        k = e;
        q = true;
        if (true) goto _L3; else goto _L6
_L6:
    }

    public int g()
    {
        return (int)(AnimationUtils.currentAnimationTimeMillis() - l);
    }

    static 
    {
        w = 0.4F;
        x = 1.0F - w;
        y = new float[101];
        float f1 = 0.0F;
        int i1 = 0;
label0:
        do
        {
            if (i1 <= 100)
            {
                float f2 = (float)i1 / 100F;
                float f3 = 1.0F;
                float f4 = f1;
                do
                {
                    float f5 = f4 + (f3 - f4) / 2.0F;
                    float f6 = 3F * f5 * (1.0F - f5);
                    float f7 = f6 * ((1.0F - f5) * w + f5 * x) + f5 * (f5 * f5);
                    if ((double)Math.abs(f7 - f2) < 1.0000000000000001E-05D)
                    {
                        float f8 = f6 + f5 * (f5 * f5);
                        y[i1] = f8;
                        i1++;
                        f1 = f4;
                        continue label0;
                    }
                    if (f7 > f2)
                    {
                        f3 = f5;
                    } else
                    {
                        f4 = f5;
                    }
                } while (true);
            }
            y[100] = 1.0F;
            B = 8F;
            C = 1.0F;
            C = 1.0F / a(1.0F);
        } while (true);
    }
}
