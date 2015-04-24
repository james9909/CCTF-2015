// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class a
{
    public static class Action
    {

        private int a;
        private int b;
        private int c;
        private Interpolator d;
        private boolean e;
        private int f;

        private void a()
        {
            if (d != null && c < 1)
            {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (c < 1)
            {
                throw new IllegalStateException("Scroll duration must be a positive number");
            } else
            {
                return;
            }
        }

        static void a(Action action, RecyclerView recyclerview)
        {
            action.a(recyclerview);
        }

        private void a(RecyclerView recyclerview)
        {
            if (e)
            {
                a();
                if (d == null)
                {
                    if (c == 0x80000000)
                    {
                        RecyclerView.s(recyclerview).b(a, b);
                    } else
                    {
                        RecyclerView.s(recyclerview).a(a, b, c);
                    }
                } else
                {
                    RecyclerView.s(recyclerview).a(a, b, c, d);
                }
                f = 1 + f;
                if (f > 10)
                {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                e = false;
                return;
            } else
            {
                f = 0;
                return;
            }
        }

        public void a(int j, int k, int l, Interpolator interpolator)
        {
            a = j;
            b = k;
            c = l;
            d = interpolator;
            e = true;
        }

        public Action(int j, int k)
        {
            this(j, k, 0x80000000, null);
        }

        public Action(int j, int k, int l, Interpolator interpolator)
        {
            e = false;
            f = 0;
            a = j;
            b = k;
            c = l;
            d = interpolator;
        }
    }


    private int a;
    private RecyclerView b;
    private  c;
    private boolean d;
    private boolean e;
    private View f;
    private final Action g = new Action(0, 0);

    private void a(int j, int k)
    {
        if (!e || a == -1)
        {
            e();
        }
        d = false;
        if (f != null)
        {
            if (a(f) == a)
            {
                a(f, b.f, g);
                Action.a(g, b);
                e();
            } else
            {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                f = null;
            }
        }
        if (e)
        {
            a(j, k, b.f, g);
            Action.a(g, b);
        }
    }

    static void a(b b1, int j, int k)
    {
        b1.a(j, k);
    }

    public int a(View view)
    {
        return b.c(view);
    }

    protected abstract void a();

    protected abstract void a(int j, int k, Action action, Action action1);

    protected void a(PointF pointf)
    {
        double d1 = Math.sqrt(pointf.x * pointf.x + pointf.y * pointf.y);
        pointf.x = (float)((double)pointf.x / d1);
        pointf.y = (float)((double)pointf.y / d1);
    }

    protected abstract void a(View view, Action action, Action action1);

    protected void b(View view)
    {
        if (a(view) == h())
        {
            f = view;
        }
    }

    public f d()
    {
        return c;
    }

    public void d(int j)
    {
        a = j;
    }

    protected final void e()
    {
        if (!e)
        {
            return;
        } else
        {
            a();
            a(b.f, -1);
            f = null;
            a = -1;
            d = false;
            e = false;
            (c, this);
            c = null;
            b = null;
            return;
        }
    }

    public void e(int j)
    {
        b.a(j);
    }

    public boolean f()
    {
        return d;
    }

    public boolean g()
    {
        return e;
    }

    public int h()
    {
        return a;
    }

    public int i()
    {
        return RecyclerView.d(b).();
    }

    public Action.d()
    {
        a = -1;
    }
}
