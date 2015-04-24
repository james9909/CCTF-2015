// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.gesturedetectors;


// Referenced classes of package com.snapchat.android.ui.gesturedetectors:
//            MultiTouchController

public static class e
{

    private int a;
    private float b[];
    private float c[];
    private float d[];
    private int e[];
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private int s;
    private long t;

    private int a(int i1)
    {
        int j1 = 32768;
        int k1 = i1;
        int l1 = 15;
        int i2 = 0;
        do
        {
            int j2 = j1 + (i2 << 1);
            int k2 = l1 - 1;
            int l2 = j2 << l1;
            if (k1 >= l2)
            {
                i2 += j1;
                k1 -= l2;
            }
            int i3 = j1 >> 1;
            if (i3 <= 0)
            {
                return i2;
            }
            j1 = i3;
            l1 = k2;
        } while (true);
    }

    static long a(e e1)
    {
        return e1.t;
    }

    private void a(int i1, float af[], float af1[], float af2[], int ai[], int j1, boolean flag, 
            long l1)
    {
        t = l1;
        s = j1;
        a = i1;
        for (int k1 = 0; k1 < i1; k1++)
        {
            b[k1] = af[k1];
            c[k1] = af1[k1];
            d[k1] = af2[k1];
            e[k1] = ai[k1];
        }

        n = flag;
        boolean flag1;
        if (i1 >= 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        o = flag1;
        if (o)
        {
            f = 0.5F * (af[0] + af[1]);
            g = 0.5F * (af1[0] + af1[1]);
            h = 0.5F * (af2[0] + af2[1]);
            i = Math.abs(af[1] - af[0]);
            j = Math.abs(af1[1] - af1[0]);
        } else
        {
            f = af[0];
            g = af1[0];
            h = af2[0];
            j = 0.0F;
            i = 0.0F;
        }
        r = false;
        q = false;
        p = false;
    }

    static void a(p p1, int i1, float af[], float af1[], float af2[], int ai[], int j1, boolean flag, 
            long l1)
    {
        p1.a(i1, af, af1, af2, ai, j1, flag, l1);
    }

    public boolean a()
    {
        return o;
    }

    public float b()
    {
        if (o)
        {
            return i;
        } else
        {
            return 0.0F;
        }
    }

    public float c()
    {
        if (o)
        {
            return j;
        } else
        {
            return 0.0F;
        }
    }

    public float d()
    {
        if (!p)
        {
            float f1;
            if (o)
            {
                f1 = i * i + j * j;
            } else
            {
                f1 = 0.0F;
            }
            l = f1;
            p = true;
        }
        return l;
    }

    public float e()
    {
        if (q) goto _L2; else goto _L1
_L1:
        if (o) goto _L4; else goto _L3
_L3:
        k = 0.0F;
_L6:
        q = true;
_L2:
        return k;
_L4:
        float f1 = d();
        int i1 = f1 != 0.0F;
        float f2 = 0.0F;
        if (i1 != 0)
        {
            f2 = (float)a((int)(256F * f1)) / 16F;
        }
        k = f2;
        if (k < i)
        {
            k = i;
        }
        if (k < j)
        {
            k = j;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public float f()
    {
        if (!r)
        {
            if (!o)
            {
                m = 0.0F;
            } else
            {
                m = (float)Math.atan2(c[1] - c[0], b[1] - b[0]);
            }
            r = true;
        }
        return m;
    }

    public float g()
    {
        return f;
    }

    public float h()
    {
        return g;
    }

    public boolean i()
    {
        return n;
    }

    public long j()
    {
        return t;
    }

    public ()
    {
        b = new float[20];
        c = new float[20];
        d = new float[20];
        e = new int[20];
    }
}
