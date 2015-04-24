// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.snapchat.android.util.ViewUtils;

public class VerticalSwipeLayout extends ViewGroup
{
    public static interface OnScrolledListener
    {

        public abstract void a(int i1, int j1, int k1);

        public abstract void c(int i1);
    }


    private OnScrolledListener a;
    private int b;
    private int c;
    private int d;
    private float e;
    private float f;
    private Scroller g;
    private float h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private VelocityTracker m;
    private int n;

    public VerticalSwipeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        k = true;
        a();
        a(context, attributeset);
    }

    private void a()
    {
        g = new Scroller(getContext(), new DecelerateInterpolator(1.4F));
        b = 0;
        m = null;
        j = false;
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        h = viewconfiguration.getScaledTouchSlop();
        l = viewconfiguration.getScaledMaximumFlingVelocity();
        n = (int)ViewUtils.a(50F, getContext());
        e();
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.getTheme().obtainStyledAttributes(attributeset, com.snapchat.android.R.styleable.VerticalSwipeLayout, 0, 0);
        b = typedarray.getInt(0, 0);
        typedarray.recycle();
        return;
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    private boolean a(float f1)
    {
        if (e == -1F)
        {
            if (!g.isFinished())
            {
                g.abortAnimation();
            }
            e = f1;
            return true;
        } else
        {
            return false;
        }
    }

    private boolean a(float f1, boolean flag, boolean flag1)
    {
        return f1 - e > h && flag || e - f1 > h && flag1;
    }

    private void b()
    {
        if (b * c != getScrollY())
        {
            a(b, 0.0D);
        }
    }

    private boolean b(float f1, boolean flag, boolean flag1)
    {
        return b != 0 && f1 - e > h && !flag || b != -1 + getChildCount() && e - f1 > h && !flag1;
    }

    private void e()
    {
        e = -1F;
        f = 0.0F;
        i = false;
        if (m != null)
        {
            m.recycle();
            m = null;
        }
    }

    private double getAnimationDurationMultiplier()
    {
        int i1 = getYVelocity();
        if (i1 == 0)
        {
            return 1.0D;
        }
        double d1 = (2D * (double)n) / (double)i1;
        if (d1 < 0.0D)
        {
            d1 = -d1;
        }
        return Math.min(Math.max(d1, 0.5D), 1.0D);
    }

    private int getFlingType()
    {
        int i1 = getYVelocity();
        if (i1 > n && b > 0)
        {
            return -1;
        }
        return i1 >= -n || b >= -1 + getChildCount() ? 0 : 1;
    }

    private int getYVelocity()
    {
        VelocityTracker velocitytracker = m;
        velocitytracker.computeCurrentVelocity(1000, l);
        return (int)velocitytracker.getYVelocity();
    }

    public void a(int i1)
    {
        a(i1, 1.0D);
    }

    public void a(int i1, double d1)
    {
        boolean flag;
        View view;
        int j1;
        int k1;
        int l1;
        if (i1 != b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = getFocusedChild();
        if (view != null && flag && view == getChildAt(b))
        {
            view.clearFocus();
        }
        if (a != null)
        {
            a.a(2, b, i1);
        }
        b = i1;
        j1 = i1 * c - getScrollY();
        k1 = (int)(400D * d1);
        if (c == 0)
        {
            l1 = 0;
        } else
        {
            l1 = (k1 * Math.abs(j1)) / c;
        }
        g.startScroll(0, getScrollY(), 0, j1, l1);
        j = true;
        invalidate();
    }

    public boolean c()
    {
        return i;
    }

    public boolean canScrollVertically(int i1)
    {
        if (!k)
        {
            return false;
        }
        if (i1 < 0 && getScrollY() != 0 || i1 > 0 && getScrollY() != c * (-1 + getChildCount()))
        {
            return true;
        } else
        {
            return getChildAt(b).canScrollVertically(i1);
        }
    }

    public void computeScroll()
    {
        if (!g.computeScrollOffset())
        {
            if (j)
            {
                j = false;
                if (a != null)
                {
                    a.c(b);
                }
            }
            return;
        } else
        {
            scrollTo(g.getCurrX(), g.getCurrY());
            postInvalidate();
            return;
        }
    }

    public boolean d()
    {
        return k;
    }

    public int getCurrentPanel()
    {
        return b;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (m == null)
        {
            m = VelocityTracker.obtain();
        }
        m.addMovement(motionevent);
        boolean flag;
        if (motionevent.getPointerCount() > 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (k && !flag)
        {
            int i1 = motionevent.getAction();
            float f1 = motionevent.getY();
            switch (i1)
            {
            case 1: // '\001'
            default:
                return false;

            case 0: // '\0'
                if (!g.isFinished())
                {
                    g.abortAnimation();
                }
                e = f1;
                return false;

            case 2: // '\002'
                break;
            }
            if (!a(f1))
            {
                View view = getChildAt(b);
                boolean flag1 = ViewCompat.canScrollVertically(view, -1);
                boolean flag2 = ViewCompat.canScrollVertically(view, 1);
                if (a(f1, flag1, flag2))
                {
                    requestDisallowInterceptTouchEvent(true);
                    view.onTouchEvent(motionevent);
                    return false;
                }
                if (b(f1, flag1, flag2))
                {
                    e = f1;
                    f = getScrollY();
                    requestDisallowInterceptTouchEvent(true);
                    if (a != null)
                    {
                        a.a(1, b, -1);
                    }
                    i = true;
                    return true;
                }
            }
        }
        return false;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2 = getChildCount();
        int j2 = 0;
        int k2 = 0;
        for (; j2 < i2; j2++)
        {
            View view = getChildAt(j2);
            if (view.getVisibility() != 8)
            {
                view.layout(0, k2, k1 - i1, k2 + c);
                k2 += c;
            }
        }

        b();
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = 0;
        int l1 = getChildCount();
        c = android.view.View.MeasureSpec.getSize(j1);
        d = (int)(0.5D * (double)c);
        for (int i2 = 0; i2 < l1; i2++)
        {
            View view = getChildAt(i2);
            if (view.getVisibility() != 8)
            {
                measureChild(view, android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i1), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(c, 0x40000000));
                k1 += c;
            }
        }

        super.onMeasure(i1, android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x40000000));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        float f1;
        if (!k)
        {
            return false;
        }
        i1 = motionevent.getAction();
        f1 = motionevent.getY();
        i1;
        JVM INSTR tableswitch 0 3: default 52
    //                   0 54
    //                   1 247
    //                   2 79
    //                   3 357;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if (!g.isFinished())
        {
            g.abortAnimation();
        }
        e = f1;
        continue; /* Loop/switch isn't completed */
_L4:
        m.addMovement(motionevent);
        if (!a(f1) && (f1 - e <= 0.0F || b != 0) && (f1 - e >= 0.0F || b != -1 + getChildCount()))
        {
            if (!i)
            {
                View view = getChildAt(b);
                if (view != null && b(f1, ViewCompat.canScrollVertically(view, -1), ViewCompat.canScrollVertically(view, 1)))
                {
                    e = f1;
                    f = getScrollY();
                    requestDisallowInterceptTouchEvent(true);
                    if (a != null)
                    {
                        a.a(1, b, -1);
                    }
                    i = true;
                }
            } else
            {
                setScrollY((int)((e - f1) + f));
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (!i) goto _L7; else goto _L6
_L6:
        int j1 = b;
        if (e - f1 <= (float)d) goto _L9; else goto _L8
_L8:
        j1 = 1 + b;
_L10:
        if (j1 == b)
        {
            j1 += getFlingType();
        }
        a(Math.max(0, Math.min(j1, -1 + getChildCount())), getAnimationDurationMultiplier());
_L7:
        e();
        continue; /* Loop/switch isn't completed */
_L9:
        if (f1 - e > (float)d)
        {
            j1 = -1 + b;
        }
        if (true) goto _L10; else goto _L5
_L5:
        e();
        if (true) goto _L1; else goto _L11
_L11:
    }

    public void setOnScrolledListener(OnScrolledListener onscrolledlistener)
    {
        a = onscrolledlistener;
    }

    public void setScrollable(boolean flag)
    {
        k = flag;
    }
}
