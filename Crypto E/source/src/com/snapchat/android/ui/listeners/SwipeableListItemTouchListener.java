// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.listeners;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.ListView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.UserFlingedIntoChatEvent;
import com.squareup.otto.Bus;

public class SwipeableListItemTouchListener
    implements android.view.View.OnTouchListener
{
    public static final class SwipeDirection extends Enum
    {

        public static final SwipeDirection a;
        public static final SwipeDirection b;
        private static final SwipeDirection c[];

        public static SwipeDirection valueOf(String s1)
        {
            return (SwipeDirection)Enum.valueOf(com/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection, s1);
        }

        public static SwipeDirection[] values()
        {
            return (SwipeDirection[])c.clone();
        }

        static 
        {
            a = new SwipeDirection("LEFT", 0);
            b = new SwipeDirection("RIGHT", 1);
            SwipeDirection aswipedirection[] = new SwipeDirection[2];
            aswipedirection[0] = a;
            aswipedirection[1] = b;
            c = aswipedirection;
        }

        private SwipeDirection(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static interface SwipeableListItemInterface
    {

        public abstract float a(View view);

        public abstract void a(View view, int i1, boolean flag);

        public abstract boolean a(View view, float f1, float f2, float f3, float f4);

        public abstract int b(View view);

        public abstract void c(View view);
    }

    public static interface SwipeableListItemWithClickInterface
        extends SwipeableListItemInterface
    {

        public abstract void a(int i1);
    }


    private int a;
    protected int b;
    protected ListView c;
    protected boolean d;
    protected View e;
    protected View f;
    protected boolean g;
    private int h;
    private int i;
    private float j;
    private SwipeableListItemInterface k;
    private int l;
    private boolean m;
    private boolean n;
    private SwipeDirection o;
    private float p;
    private float q;
    private float r;
    private float s;
    private boolean t;
    private int u;
    private VelocityTracker v;

    public SwipeableListItemTouchListener(ListView listview, SwipeDirection swipedirection, SwipeableListItemInterface swipeablelistiteminterface)
    {
        l = 1;
        ViewConfiguration viewconfiguration = ViewConfiguration.get(listview.getContext());
        b = viewconfiguration.getScaledTouchSlop();
        a = 12 * viewconfiguration.getScaledMinimumFlingVelocity();
        h = listview.getContext().getResources().getInteger(0x10e0000);
        c = listview;
        k = swipeablelistiteminterface;
        o = swipedirection;
    }

    static float a(SwipeableListItemTouchListener swipeablelistitemtouchlistener, float f1)
    {
        swipeablelistitemtouchlistener.j = f1;
        return f1;
    }

    static SwipeableListItemInterface a(SwipeableListItemTouchListener swipeablelistitemtouchlistener)
    {
        return swipeablelistitemtouchlistener.k;
    }

    private Boolean a(MotionEvent motionevent, float f1, float f2)
    {
        float f3 = 1.0F;
        boolean flag = true;
        boolean flag1;
        int i1;
        if (f1 > 0.0F)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        i1 = (int)k.a(e);
        if (i1 == 0 && !flag1 && o == SwipeDirection.b || i1 == 0 && flag1 && o == SwipeDirection.a)
        {
            return Boolean.valueOf(false);
        }
        if (m && flag1 && i >= 0)
        {
            if (e != null && d)
            {
                a(e, 0, h);
            }
            d();
            return Boolean.valueOf(false);
        }
        if (Math.abs(f1) > (float)b && Math.abs(f2) < Math.abs(f1) / 2.0F)
        {
            d = flag;
            int j1;
            int k1;
            MotionEvent motionevent1;
            if (flag1)
            {
                k1 = b;
            } else
            {
                k1 = -b;
            }
            u = k1;
            c.requestDisallowInterceptTouchEvent(flag);
            motionevent1 = MotionEvent.obtain(motionevent);
            motionevent1.setAction(3 | motionevent.getActionIndex() << 8);
            c.onTouchEvent(motionevent1);
            motionevent1.recycle();
        }
        if (d || t)
        {
            j = (f1 + (float)i) - (float)u;
            if (o == SwipeDirection.a && j > 0.0F)
            {
                j = 0.0F;
            }
            if (o == SwipeDirection.b && j < 0.0F)
            {
                j = 0.0F;
            }
            j1 = k.b(e);
            float f4 = -j / (float)j1;
            if (f4 < 0.0F)
            {
                f4 = 0.0F;
            }
            if (f4 <= f3)
            {
                f3 = f4;
            }
            if (Math.abs(f1) < (float)k.b(e) || k.a(e) < (float)k.b(e))
            {
                flag = false;
            }
            if (t || flag)
            {
                if (n)
                {
                    c.requestDisallowInterceptTouchEvent(false);
                }
                k.c(e);
            }
            return Boolean.valueOf(k.a(e, j, f3, q, s));
        } else
        {
            return null;
        }
    }

    private void a(View view, int i1, int j1)
    {
        a(view, i1, j1, ((Interpolator) (new LinearInterpolator())));
    }

    private void a(View view, int i1, int j1, Interpolator interpolator)
    {
        boolean flag;
        int ai[];
        ValueAnimator valueanimator;
        if (i1 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ai = new int[2];
        ai[0] = (int)j;
        ai[1] = i1;
        valueanimator = ValueAnimator.ofInt(ai).setDuration(j1);
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(view) {

            final View a;
            final SwipeableListItemTouchListener b;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                float f1 = 1.0F;
                SwipeableListItemTouchListener.a(b, ((Integer)valueanimator1.getAnimatedValue()).intValue());
                int k1 = SwipeableListItemTouchListener.a(b).b(b.e);
                float f2 = -SwipeableListItemTouchListener.b(b) / (float)k1;
                if (f2 < 0.0F)
                {
                    f2 = 0.0F;
                }
                if (f2 <= f1)
                {
                    f1 = f2;
                }
                SwipeableListItemTouchListener.a(b).a(a, SwipeableListItemTouchListener.b(b), f1, SwipeableListItemTouchListener.c(b), SwipeableListItemTouchListener.d(b));
            }

            
            {
                b = SwipeableListItemTouchListener.this;
                a = view;
                super();
            }
        });
        valueanimator.addListener(new android.animation.Animator.AnimatorListener(view, flag) {

            final View a;
            final boolean b;
            final SwipeableListItemTouchListener c;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                int k1 = c.a(a);
                if (SwipeableListItemTouchListener.a(c) != null && k1 != -1)
                {
                    SwipeableListItemTouchListener.a(c).a(a, k1, b);
                }
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                c = SwipeableListItemTouchListener.this;
                a = view;
                b = flag;
                super();
            }
        });
        valueanimator.setInterpolator(interpolator);
        valueanimator.start();
    }

    static float b(SwipeableListItemTouchListener swipeablelistitemtouchlistener)
    {
        return swipeablelistitemtouchlistener.j;
    }

    private View b(View view)
    {
        if (view == null || view.getParent() == null)
        {
            return null;
        } else
        {
            int i1 = (c.getPositionForView(view) - c.getFirstVisiblePosition()) + c.getHeaderViewsCount();
            return ((StickyListHeadersListView)c).getWrappedView(i1);
        }
    }

    private void b()
    {
        if (i != 0)
        {
            float f1 = (float)k.b(e) / 2.0F;
            if ((float)i > f1)
            {
                i = k.b(e);
                if (o.equals(SwipeDirection.a))
                {
                    i = -1 * i;
                }
            } else
            {
                i = 0;
            }
        }
        a(e, i, h);
    }

    static float c(SwipeableListItemTouchListener swipeablelistitemtouchlistener)
    {
        return swipeablelistitemtouchlistener.q;
    }

    private boolean c()
    {
        v.computeCurrentVelocity(1000);
        float f1 = v.getXVelocity();
        return f1 > v.getYVelocity() && f1 > (float)a;
    }

    static float d(SwipeableListItemTouchListener swipeablelistitemtouchlistener)
    {
        return swipeablelistitemtouchlistener.s;
    }

    private void d()
    {
        v.recycle();
        v = null;
        p = 0.0F;
        r = 0.0F;
        e = null;
        d = false;
        t = false;
        i = 0;
        j = 0.0F;
    }

    protected int a(View view)
    {
        if (c == null || view == null || view.getParent() == null)
        {
            return -1;
        }
        int i1;
        try
        {
            i1 = c.getPositionForView(view);
        }
        catch (NullPointerException nullpointerexception)
        {
            return -1;
        }
        return i1;
    }

    public android.widget.AbsListView.OnScrollListener a()
    {
        return new android.widget.AbsListView.OnScrollListener() {

            final SwipeableListItemTouchListener a;

            public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int i1)
            {
                boolean flag = true;
                SwipeableListItemTouchListener swipeablelistitemtouchlistener = a;
                if (i1 == flag)
                {
                    flag = false;
                }
                swipeablelistitemtouchlistener.c(flag);
            }

            
            {
                a = SwipeableListItemTouchListener.this;
                super();
            }
        };
    }

    public void a(boolean flag)
    {
        m = flag;
    }

    public void b(boolean flag)
    {
        n = flag;
    }

    public void c(boolean flag)
    {
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        g = flag1;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag;
        flag = true;
        if (l < 2)
        {
            l = c.getWidth();
        }
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 3: default 56
    //                   0 58
    //                   1 878
    //                   2 758
    //                   3 294;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return false;
_L2:
        f = null;
        if (g) goto _L1; else goto _L6
_L6:
        Rect rect;
        int i3;
        int j3;
        int k3;
        int l3;
        rect = new Rect();
        i3 = c.getChildCount();
        int ai[] = new int[2];
        c.getLocationOnScreen(ai);
        j3 = (int)motionevent.getRawX() - ai[0];
        k3 = (int)motionevent.getRawY() - ai[flag];
        l3 = 0;
_L10:
        View view1;
        if (l3 >= i3)
        {
            continue; /* Loop/switch isn't completed */
        }
        view1 = c.getChildAt(l3);
        view1.getHitRect(rect);
        if (!rect.contains(j3, k3)) goto _L8; else goto _L7
_L7:
        if (c instanceof StickyListHeadersListView)
        {
            view1 = b(view1);
        }
        e = view1;
        if (e == null) goto _L1; else goto _L9
_L9:
        p = motionevent.getRawX();
        r = motionevent.getRawY();
        q = motionevent.getX();
        s = motionevent.getY();
        if (m)
        {
            i = (int)k.a(e);
        } else
        {
            i = 0;
        }
        j = i;
        v = VelocityTracker.obtain();
        v.addMovement(motionevent);
        return false;
_L8:
        l3++;
          goto _L10
_L5:
        int i1 = ((flag) ? 1 : 0);
_L11:
        if (v != null && !g)
        {
            float f1 = motionevent.getRawX() - p;
            v.addMovement(motionevent);
            v.computeCurrentVelocity(1000);
            float f2 = v.getXVelocity();
            float f3 = Math.abs(f2);
            float f4 = Math.abs(v.getYVelocity());
            int j1;
            float f5;
            float f6;
            Boolean boolean1;
            boolean flag1;
            int l2;
            if (Math.abs(f1) >= (float)k.b(e))
            {
                if (f1 > 0.0F)
                {
                    j1 = ((flag) ? 1 : 0);
                } else
                {
                    j1 = 0;
                }
            } else
            if ((float)a <= f2)
            {
                if (f1 > 0.0F)
                {
                    j1 = ((flag) ? 1 : 0);
                } else
                {
                    j1 = 0;
                }
            } else
            if ((float)a <= f3 && f4 < f3 && d)
            {
                int l1;
                int i2;
                int j2;
                int k2;
                if (f2 < 0.0F)
                {
                    l1 = ((flag) ? 1 : 0);
                } else
                {
                    l1 = 0;
                }
                if (f1 < 0.0F)
                {
                    i2 = ((flag) ? 1 : 0);
                } else
                {
                    i2 = 0;
                }
                if (l1 == i2)
                {
                    j2 = ((flag) ? 1 : 0);
                } else
                {
                    j2 = 0;
                }
                if (f1 <= 0.0F)
                {
                    flag = false;
                }
                k2 = ((flag) ? 1 : 0);
                flag = j2;
                j1 = k2;
            } else
            {
                flag = false;
                j1 = 0;
            }
            if (flag)
            {
                if (m)
                {
                    if (o == SwipeDirection.a && j1 != 0)
                    {
                        a(e, 0, h);
                    } else
                    {
                        a(e, -k.b(e), h);
                    }
                } else
                if (i1 == 0 && f1 > 0.0F)
                {
                    a(e, 0, h);
                    BusProvider.a().a(new UserFlingedIntoChatEvent(e));
                } else
                if (t)
                {
                    a(e, k.b(e), 50, new DecelerateInterpolator());
                } else
                {
                    j = 0.0F;
                }
            } else
            {
                if (k instanceof SwipeableListItemWithClickInterface)
                {
                    int k1 = a(e);
                    if (k1 != -1)
                    {
                        ((SwipeableListItemWithClickInterface)k).a(k1);
                    }
                }
                b();
            }
            f = e;
            d();
            return false;
        }
          goto _L1
_L4:
        if (v != null && !g)
        {
            v.addMovement(motionevent);
            f5 = motionevent.getRawX() - p;
            f6 = motionevent.getRawY() - r;
            if (!t)
            {
                flag1 = c();
                if (f5 > 50F)
                {
                    l2 = ((flag) ? 1 : 0);
                } else
                {
                    l2 = 0;
                }
                if (l2 != 0 && flag1)
                {
                    t = flag;
                }
            }
            boolean1 = a(motionevent, f5, f6);
            if (boolean1 != null)
            {
                return boolean1.booleanValue();
            }
        }
          goto _L1
_L3:
        i1 = 0;
          goto _L11
    }
}
