// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.gesturedetectors;

import android.util.Log;
import android.view.MotionEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class MultiTouchController
{
    public static interface MultiTouchObjectCanvas
    {

        public abstract void a(Object obj, PointInfo pointinfo);

        public abstract void a(Object obj, PositionAndScale positionandscale);

        public abstract boolean a(Object obj, PositionAndScale positionandscale, PointInfo pointinfo);

        public abstract Object b(PointInfo pointinfo);
    }

    public static class PointInfo
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

        static long a(PointInfo pointinfo)
        {
            return pointinfo.t;
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

        static void a(PointInfo pointinfo, int i1, float af[], float af1[], float af2[], int ai[], int j1, boolean flag, 
                long l1)
        {
            pointinfo.a(i1, af, af1, af2, ai, j1, flag, l1);
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

        public PointInfo()
        {
            b = new float[20];
            c = new float[20];
            d = new float[20];
            e = new int[20];
        }
    }

    public static class PositionAndScale
    {

        private float a;
        private float b;
        private float c;
        private float d;
        private float e;
        private float f;
        private boolean g;
        private boolean h;
        private boolean i;

        static boolean a(PositionAndScale positionandscale)
        {
            return positionandscale.g;
        }

        static boolean b(PositionAndScale positionandscale)
        {
            return positionandscale.h;
        }

        static boolean c(PositionAndScale positionandscale)
        {
            return positionandscale.i;
        }

        static float d(PositionAndScale positionandscale)
        {
            return positionandscale.a;
        }

        static float e(PositionAndScale positionandscale)
        {
            return positionandscale.b;
        }

        static float f(PositionAndScale positionandscale)
        {
            return positionandscale.c;
        }

        static float g(PositionAndScale positionandscale)
        {
            return positionandscale.d;
        }

        static float h(PositionAndScale positionandscale)
        {
            return positionandscale.e;
        }

        static float i(PositionAndScale positionandscale)
        {
            return positionandscale.f;
        }

        public float a()
        {
            return a;
        }

        protected void a(float f1, float f2, float f3, float f4, float f5, float f6)
        {
            float f7 = 1.0F;
            a = f1;
            b = f2;
            if (f3 == 0.0F)
            {
                f3 = f7;
            }
            c = f3;
            if (f4 == 0.0F)
            {
                f4 = f7;
            }
            d = f4;
            if (f5 != 0.0F)
            {
                f7 = f5;
            }
            e = f7;
            f = f6;
        }

        public void a(float f1, float f2, boolean flag, float f3, boolean flag1, float f4, float f5, 
                boolean flag2, float f6)
        {
            float f7 = 1.0F;
            a = f1;
            b = f2;
            g = flag;
            if (f3 == 0.0F)
            {
                f3 = f7;
            }
            c = f3;
            h = flag1;
            if (f4 == 0.0F)
            {
                f4 = f7;
            }
            d = f4;
            if (f5 != 0.0F)
            {
                f7 = f5;
            }
            e = f7;
            i = flag2;
            f = f6;
        }

        public float b()
        {
            return b;
        }

        public float c()
        {
            if (!g)
            {
                return 1.0F;
            } else
            {
                return c;
            }
        }

        public float d()
        {
            if (!i)
            {
                return 0.0F;
            } else
            {
                return f;
            }
        }

        public PositionAndScale()
        {
        }
    }


    private static Method A;
    private static Method B;
    private static Method C;
    private static Method D;
    private static int E = 6;
    private static int F = 8;
    private static final float G[] = new float[20];
    private static final float H[] = new float[20];
    private static final float I[] = new float[20];
    private static final int J[] = new int[20];
    public static final boolean b;
    private static Method w;
    private static Method x;
    private static Method y;
    private static Method z;
    MultiTouchObjectCanvas a;
    private PointInfo c;
    private PointInfo d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private boolean k;
    private Object l;
    private PositionAndScale m;
    private long n;
    private long o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private int v;

    public MultiTouchController(MultiTouchObjectCanvas multitouchobjectcanvas)
    {
        this(multitouchobjectcanvas, true);
    }

    public MultiTouchController(MultiTouchObjectCanvas multitouchobjectcanvas, boolean flag)
    {
        l = null;
        m = new PositionAndScale();
        v = 0;
        c = new PointInfo();
        d = new PointInfo();
        k = flag;
        a = multitouchobjectcanvas;
    }

    private void a()
    {
        e = c.g();
        f = c.h();
        float f1;
        float f2;
        float f3;
        boolean flag;
        float f4;
        if (!PositionAndScale.a(m))
        {
            f1 = 0.0F;
        } else
        {
            f1 = c.e();
        }
        g = Math.max(21.3F, f1);
        if (!PositionAndScale.b(m))
        {
            f2 = 0.0F;
        } else
        {
            f2 = c.b();
        }
        h = Math.max(30F, f2);
        if (!PositionAndScale.b(m))
        {
            f3 = 0.0F;
        } else
        {
            f3 = c.c();
        }
        i = Math.max(30F, f3);
        flag = PositionAndScale.c(m);
        f4 = 0.0F;
        if (flag)
        {
            f4 = c.f();
        }
        j = f4;
    }

    private void a(int i1, float af[], float af1[], float af2[], int ai[], int j1, boolean flag, 
            long l1)
    {
        PointInfo pointinfo = d;
        d = c;
        c = pointinfo;
        PointInfo.a(c, i1, af, af1, af2, ai, j1, flag, l1);
        d();
    }

    private void b()
    {
        if (l == null)
        {
            return;
        } else
        {
            a.a(l, m);
            a();
            p = e - PositionAndScale.d(m);
            q = f - PositionAndScale.e(m);
            r = PositionAndScale.f(m) / g;
            t = PositionAndScale.g(m) / h;
            u = PositionAndScale.h(m) / i;
            s = PositionAndScale.i(m) - j;
            return;
        }
    }

    private void c()
    {
        if (l != null)
        {
            a();
            float f1 = e - p;
            float f2 = f - q;
            float f3 = r * g;
            float f4 = t * h;
            float f5 = u * i;
            float f6 = s + j;
            m.a(f1, f2, f3, f4, f5, f6);
            if (!a.a(l, m, c))
            {
                return;
            }
        }
    }

    private void d()
    {
        v;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 33
    //                   1 112
    //                   2 217;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (c.i())
        {
            l = a.b(c);
            if (l != null)
            {
                v = 1;
                a.a(l, c);
                b();
                long l1 = c.j();
                o = l1;
                n = l1;
                return;
            }
        }
          goto _L1
_L3:
        if (!c.i())
        {
            v = 0;
            MultiTouchObjectCanvas multitouchobjectcanvas1 = a;
            l = null;
            multitouchobjectcanvas1.a(null, c);
            return;
        }
        if (c.a())
        {
            v = 2;
            b();
            n = c.j();
            o = 20L + n;
            return;
        }
        if (c.j() < o)
        {
            b();
            return;
        } else
        {
            c();
            return;
        }
_L4:
        if (!c.a() || !c.i())
        {
            if (!c.i())
            {
                v = 0;
                MultiTouchObjectCanvas multitouchobjectcanvas = a;
                l = null;
                multitouchobjectcanvas.a(null, c);
                return;
            } else
            {
                v = 1;
                b();
                n = c.j();
                o = 20L + n;
                return;
            }
        }
        if (Math.abs(c.g() - d.g()) > 30F || Math.abs(c.h() - d.h()) > 30F || 0.5F * Math.abs(c.b() - d.b()) > 40F || 0.5F * Math.abs(c.c() - d.c()) > 40F)
        {
            b();
            n = c.j();
            o = 20L + n;
            return;
        }
        if (PointInfo.a(c) < o)
        {
            b();
            return;
        } else
        {
            c();
            return;
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        if (!b) goto _L2; else goto _L1
_L1:
        int i1 = ((Integer)w.invoke(motionevent, new Object[0])).intValue();
_L30:
        int j1;
        int k1;
        int l1;
        boolean flag;
        int l2;
        boolean flag1;
        if (v == 0 && !k && i1 == 1)
        {
            return false;
        }
        int i2;
        int j2;
        Method method;
        Object aobj[];
        int k2;
        float af[];
        Method method1;
        Object aobj1[];
        Object obj;
        float af1[];
        Method method2;
        Object aobj2[];
        Object obj1;
        float af2[];
        Method method3;
        Object aobj3[];
        Object obj2;
        Method method4;
        Object aobj4[];
        Method method5;
        Object aobj5[];
        Method method6;
        Object aobj6[];
        float af3[];
        float af4[];
        float af5[];
        int ai[];
        long l3;
        long l4;
        float af6[];
        float f1;
        float af7[];
        float f2;
        float af8[];
        float f3;
        try
        {
            j1 = motionevent.getAction();
            k1 = motionevent.getHistorySize() / i1;
        }
        catch (Exception exception)
        {
            Log.e("MultiTouchController", "onTouchEvent() failed", exception);
            return false;
        }
        l1 = 0;
          goto _L3
_L33:
        if (b && i1 != 1) goto _L5; else goto _L4
_L4:
        af6 = G;
        if (!flag) goto _L7; else goto _L6
_L6:
        f1 = motionevent.getHistoricalX(l1);
_L15:
        af6[0] = f1;
        af7 = H;
        if (!flag) goto _L9; else goto _L8
_L8:
        f2 = motionevent.getHistoricalY(l1);
_L16:
        af7[0] = f2;
        af8 = I;
        if (!flag) goto _L11; else goto _L10
_L10:
        f3 = motionevent.getHistoricalPressure(l1);
_L17:
        af8[0] = f3;
_L19:
        af3 = G;
        af4 = H;
        af5 = I;
        ai = J;
        if (flag)
        {
            l2 = 2;
        } else
        {
            l2 = j1;
        }
          goto _L12
_L28:
        if (!flag) goto _L14; else goto _L13
_L13:
        l3 = motionevent.getHistoricalEventTime(l1);
_L29:
        a(i1, af3, af4, af5, ai, l2, flag1, l3);
        l1++;
          goto _L3
_L7:
        f1 = motionevent.getX();
          goto _L15
_L9:
        f2 = motionevent.getY();
          goto _L16
_L11:
        f3 = motionevent.getPressure();
          goto _L17
_L5:
        i2 = Math.min(i1, 20);
        j2 = 0;
_L24:
        if (j2 >= i2) goto _L19; else goto _L18
_L18:
        method = x;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(j2);
        k2 = ((Integer)method.invoke(motionevent, aobj)).intValue();
        J[j2] = k2;
        af = G;
        if (!flag) goto _L21; else goto _L20
_L20:
        method1 = z;
        aobj1 = new Object[2];
        aobj1[0] = Integer.valueOf(j2);
        aobj1[1] = Integer.valueOf(l1);
        obj = method1.invoke(motionevent, aobj1);
_L25:
        af[j2] = ((Float)(Float)obj).floatValue();
        af1 = H;
        if (!flag) goto _L23; else goto _L22
_L22:
        method2 = A;
        aobj2 = new Object[2];
        aobj2[0] = Integer.valueOf(j2);
        aobj2[1] = Integer.valueOf(l1);
        obj1 = method2.invoke(motionevent, aobj2);
_L26:
        af1[j2] = ((Float)(Float)obj1).floatValue();
        af2 = I;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_579;
        }
        method3 = B;
        aobj3 = new Object[2];
        aobj3[0] = Integer.valueOf(j2);
        aobj3[1] = Integer.valueOf(l1);
        obj2 = method3.invoke(motionevent, aobj3);
_L27:
        af2[j2] = ((Float)(Float)obj2).floatValue();
        j2++;
          goto _L24
_L21:
        method6 = C;
        aobj6 = new Object[1];
        aobj6[0] = Integer.valueOf(j2);
        obj = method6.invoke(motionevent, aobj6);
          goto _L25
_L23:
        method5 = D;
        aobj5 = new Object[1];
        aobj5[0] = Integer.valueOf(j2);
        obj1 = method5.invoke(motionevent, aobj5);
          goto _L26
        method4 = y;
        aobj4 = new Object[1];
        aobj4[0] = Integer.valueOf(j2);
        obj2 = method4.invoke(motionevent, aobj4);
          goto _L27
_L35:
        if (j1 == 1)
        {
            break MISSING_BLOCK_LABEL_724;
        }
        if ((j1 & -1 + (1 << F)) == E || j1 == 3)
        {
            break MISSING_BLOCK_LABEL_724;
        }
        flag1 = true;
          goto _L28
_L14:
        l4 = motionevent.getEventTime();
        l3 = l4;
          goto _L29
_L32:
        return true;
_L2:
        i1 = 1;
          goto _L30
_L3:
        if (l1 > k1) goto _L32; else goto _L31
_L31:
        if (l1 < k1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L33
_L12:
        if (!flag) goto _L35; else goto _L34
_L34:
        flag1 = true;
          goto _L28
        flag1 = false;
          goto _L28
    }

    static 
    {
        boolean flag = true;
        try
        {
            w = android/view/MotionEvent.getMethod("getPointerCount", new Class[0]);
            Class aclass[] = new Class[1];
            aclass[0] = Integer.TYPE;
            x = android/view/MotionEvent.getMethod("getPointerId", aclass);
            Class aclass1[] = new Class[1];
            aclass1[0] = Integer.TYPE;
            y = android/view/MotionEvent.getMethod("getPressure", aclass1);
            Class aclass2[] = new Class[2];
            aclass2[0] = Integer.TYPE;
            aclass2[1] = Integer.TYPE;
            z = android/view/MotionEvent.getMethod("getHistoricalX", aclass2);
            Class aclass3[] = new Class[2];
            aclass3[0] = Integer.TYPE;
            aclass3[1] = Integer.TYPE;
            A = android/view/MotionEvent.getMethod("getHistoricalY", aclass3);
            Class aclass4[] = new Class[2];
            aclass4[0] = Integer.TYPE;
            aclass4[1] = Integer.TYPE;
            B = android/view/MotionEvent.getMethod("getHistoricalPressure", aclass4);
            Class aclass5[] = new Class[1];
            aclass5[0] = Integer.TYPE;
            C = android/view/MotionEvent.getMethod("getX", aclass5);
            Class aclass6[] = new Class[1];
            aclass6[0] = Integer.TYPE;
            D = android/view/MotionEvent.getMethod("getY", aclass6);
        }
        catch (Exception exception)
        {
            Log.e("MultiTouchController", "static initializer failed", exception);
            flag = false;
        }
        b = flag;
        if (b)
        {
            try
            {
                E = android/view/MotionEvent.getField("ACTION_POINTER_UP").getInt(null);
                F = android/view/MotionEvent.getField("ACTION_POINTER_INDEX_SHIFT").getInt(null);
            }
            catch (Exception exception1) { }
        }
    }
}
