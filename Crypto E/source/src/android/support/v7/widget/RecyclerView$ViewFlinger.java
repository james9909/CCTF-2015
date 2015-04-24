// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView, ChildHelper

class d
    implements Runnable
{

    final RecyclerView a;
    private int b;
    private int c;
    private ScrollerCompat d;
    private Interpolator e;
    private boolean f;
    private boolean g;

    private float a(float f1)
    {
        return (float)Math.sin((float)(0.4712389167638204D * (double)(f1 - 0.5F)));
    }

    private int b(int i, int j, int k, int l)
    {
        int i1 = Math.abs(i);
        int j1 = Math.abs(j);
        boolean flag;
        int k1;
        int l1;
        int i2;
        int j2;
        float f1;
        float f2;
        int l2;
        if (i1 > j1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k1 = (int)Math.sqrt(k * k + l * l);
        l1 = (int)Math.sqrt(i * i + j * j);
        if (flag)
        {
            i2 = a.getWidth();
        } else
        {
            i2 = a.getHeight();
        }
        j2 = i2 / 2;
        f1 = Math.min(1.0F, (1.0F * (float)l1) / (float)i2);
        f2 = (float)j2 + (float)j2 * a(f1);
        if (k1 > 0)
        {
            l2 = 4 * Math.round(1000F * Math.abs(f2 / (float)k1));
        } else
        {
            int k2;
            if (flag)
            {
                k2 = i1;
            } else
            {
                k2 = j1;
            }
            l2 = (int)(300F * (1.0F + (float)k2 / (float)i2));
        }
        return Math.min(l2, 2000);
    }

    private void c()
    {
        g = false;
        f = true;
    }

    private void d()
    {
        f = false;
        if (g)
        {
            a();
        }
    }

    void a()
    {
        if (f)
        {
            g = true;
            return;
        } else
        {
            ViewCompat.postOnAnimation(a, this);
            return;
        }
    }

    public void a(int i, int j)
    {
        RecyclerView.b(a, 2);
        c = 0;
        b = 0;
        d.fling(0, 0, i, j, 0x80000000, 0x7fffffff, 0x80000000, 0x7fffffff);
        a();
    }

    public void a(int i, int j, int k)
    {
        a(i, j, k, RecyclerView.o());
    }

    public void a(int i, int j, int k, int l)
    {
        a(i, j, b(i, j, k, l));
    }

    public void a(int i, int j, int k, Interpolator interpolator)
    {
        if (e != interpolator)
        {
            e = interpolator;
            d = ScrollerCompat.create(a.getContext(), interpolator);
        }
        RecyclerView.b(a, 2);
        c = 0;
        b = 0;
        d.startScroll(0, 0, i, j, k);
        a();
    }

    public void b()
    {
        a.removeCallbacks(this);
        d.abortAnimation();
    }

    public void b(int i, int j)
    {
        a(i, j, 0, 0);
    }

    public void run()
    {
        ScrollerCompat scrollercompat;
        er er;
        c();
        RecyclerView.e(a);
        scrollercompat = d;
        er = RecyclerView.d(a).r;
        if (!scrollercompat.computeScrollOffset()) goto _L2; else goto _L1
_L1:
        int i2;
        int j2;
        int i = scrollercompat.getCurrX();
        int j = scrollercompat.getCurrY();
        int k = i - b;
        int l = j - c;
        b = i;
        c = j;
        er er1 = RecyclerView.f(a);
        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        int l1 = 0;
        boolean flag;
        if (er1 != null)
        {
            a.b();
            RecyclerView.b(a, true);
            k1 = 0;
            l1 = 0;
            if (k != 0)
            {
                l1 = RecyclerView.d(a).a(k, a.a, a.f);
                k1 = k - l1;
            }
            i1 = 0;
            j1 = 0;
            if (l != 0)
            {
                j1 = RecyclerView.d(a).b(l, a.a, a.f);
                i1 = l - j1;
            }
            if (RecyclerView.g(a))
            {
                int i4 = a.c.b();
                int j4 = 0;
                while (j4 < i4) 
                {
                    View view = a.c.b(j4);
                    er er2 = a.a(view);
                    if (er2 == null || er2. == null)
                    {
                        continue;
                    }
                    View view1;
                    int k4;
                    int l4;
                    if (er2. != null)
                    {
                        view1 = er2..;
                    } else
                    {
                        view1 = null;
                    }
                    if (view1 == null)
                    {
                        continue;
                    }
                    k4 = view.getLeft();
                    l4 = view.getTop();
                    if (k4 != view1.getLeft() || l4 != view1.getTop())
                    {
                        view1.layout(k4, l4, k4 + view1.getWidth(), l4 + view1.getHeight());
                    }
                    j4++;
                }
            }
            if (er != null && !er.f() && er.g())
            {
                int l3 = a.f.a();
                int k2;
                int l2;
                if (l3 == 0)
                {
                    er.e();
                } else
                if (er.h() >= l3)
                {
                    er.d(l3 - 1);
                    android.support.v7.widget.er.a(er, k - k1, l - i1);
                } else
                {
                    android.support.v7.widget.er.a(er, k - k1, l - i1);
                }
            }
            RecyclerView.b(a, false);
            a.a(false);
        }
        i2 = i1;
        j2 = k1;
        k2 = j1;
        l2 = l1;
        if (k == l2 && l == k2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!RecyclerView.h(a).isEmpty())
        {
            a.invalidate();
        }
        if (ViewCompat.getOverScrollMode(a) != 2)
        {
            RecyclerView.a(a, k, l);
        }
        if (j2 == 0 && i2 == 0) goto _L4; else goto _L3
_L3:
        int i3 = (int)scrollercompat.getCurrVelocity();
        int j3;
        if (j2 != i)
        {
            int k3;
            if (j2 < 0)
            {
                k3 = -i3;
            } else
            if (j2 > 0)
            {
                k3 = i3;
            } else
            {
                k3 = 0;
            }
            j3 = k3;
        } else
        {
            j3 = 0;
        }
        if (i2 == j) goto _L6; else goto _L5
_L5:
        if (i2 >= 0) goto _L8; else goto _L7
_L7:
        i3 = -i3;
_L10:
        if (ViewCompat.getOverScrollMode(a) != 2)
        {
            a.d(j3, i3);
        }
        if ((j3 != 0 || j2 == i || scrollercompat.getFinalX() == 0) && (i3 != 0 || i2 == j || scrollercompat.getFinalY() == 0))
        {
            scrollercompat.abortAnimation();
        }
_L4:
        if (l2 != 0 || k2 != 0)
        {
            RecyclerView.a(a, 0, 0, 0, 0);
            if (RecyclerView.i(a) != null)
            {
                RecyclerView.i(a).a(a, l2, k2);
            }
        }
        if (!RecyclerView.j(a))
        {
            a.invalidate();
        }
        if (scrollercompat.isFinished() || !flag)
        {
            RecyclerView.b(a, 0);
        } else
        {
            a();
        }
_L2:
        if (er != null && er.f())
        {
            android.support.v7.widget.er.a(er, 0, 0);
        }
        d();
        return;
_L8:
        if (i2 <= 0)
        {
            i3 = 0;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        i3 = 0;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public ener(RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
        e = RecyclerView.o();
        f = false;
        g = false;
        d = ScrollerCompat.create(recyclerview.getContext(), RecyclerView.o());
    }
}
