// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

public abstract class LinearSmoothScroller extends RecyclerView.SmoothScroller
{

    private final float a;
    protected final LinearInterpolator b;
    protected final DecelerateInterpolator c;
    protected PointF d;
    protected int e;
    protected int f;

    private int a(int i, int j)
    {
        int k = i - j;
        if (i * k <= 0)
        {
            k = 0;
        }
        return k;
    }

    public int a(int i, int j, int k, int l, int i1)
    {
        i1;
        JVM INSTR tableswitch -1 1: default 28
    //                   -1 38
    //                   0 51
    //                   1 46;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
_L2:
        int j1 = k - i;
_L6:
        return j1;
_L4:
        return l - j;
_L3:
        j1 = k - i;
        if (j1 <= 0)
        {
            j1 = l - j;
            if (j1 >= 0)
            {
                return 0;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int a(View view, int i)
    {
        RecyclerView.LayoutManager layoutmanager = d();
        if (!layoutmanager.e())
        {
            return 0;
        } else
        {
            RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
            return a(layoutmanager.h(view) - layoutparams.topMargin, layoutmanager.j(view) + layoutparams.bottomMargin, layoutmanager.r(), layoutmanager.p() - layoutmanager.t(), i);
        }
    }

    public abstract PointF a(int i);

    protected void a()
    {
        f = 0;
        e = 0;
        d = null;
    }

    protected void a(int i, int j, RecyclerView.State state, RecyclerView.SmoothScroller.Action action)
    {
        if (i() == 0)
        {
            e();
        } else
        {
            e = a(e, i);
            f = a(f, j);
            if (e == 0 && f == 0)
            {
                a(action);
                return;
            }
        }
    }

    protected void a(RecyclerView.SmoothScroller.Action action)
    {
        PointF pointf = a(h());
        if (pointf == null || pointf.x == 0.0F && pointf.y == 0.0F)
        {
            Log.e("LinearSmoothScroller", "To support smooth scrolling, you should override \nLayoutManager#computeScrollVectorForPosition.\nFalling back to instant scroll");
            int i = h();
            e();
            e(i);
            return;
        } else
        {
            a(pointf);
            d = pointf;
            e = (int)(10000F * pointf.x);
            f = (int)(10000F * pointf.y);
            int j = c(10000);
            action.a((int)(1.2F * (float)e), (int)(1.2F * (float)f), (int)(1.2F * (float)j), b);
            return;
        }
    }

    protected void a(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action)
    {
        int i = b(view, b());
        int j = a(view, c());
        int k = b((int)Math.sqrt(i * i + j * j));
        if (k > 0)
        {
            action.a(-i, -j, k, c);
        }
    }

    protected int b()
    {
        if (d == null || d.x == 0.0F)
        {
            return 0;
        }
        return d.x <= 0.0F ? -1 : 1;
    }

    protected int b(int i)
    {
        return (int)Math.ceil((double)c(i) / 0.33560000000000001D);
    }

    public int b(View view, int i)
    {
        RecyclerView.LayoutManager layoutmanager = d();
        if (!layoutmanager.d())
        {
            return 0;
        } else
        {
            RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
            return a(layoutmanager.g(view) - layoutparams.leftMargin, layoutmanager.i(view) + layoutparams.rightMargin, layoutmanager.q(), layoutmanager.o() - layoutmanager.s(), i);
        }
    }

    protected int c()
    {
        if (d == null || d.y == 0.0F)
        {
            return 0;
        }
        return d.y <= 0.0F ? -1 : 1;
    }

    protected int c(int i)
    {
        return (int)Math.ceil((float)Math.abs(i) * a);
    }
}
