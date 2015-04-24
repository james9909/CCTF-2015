// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.TextView;
import in.srain.cube.util.CLog;
import in.srain.cube.views.ptr.util.PtrLocalDisplay;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrUIHandlerHolder, PtrUIHandlerHook, PtrHandler, PtrUIHandler

public class PtrFrameLayout extends ViewGroup
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public LayoutParams(int i1, int j1)
        {
            super(i1, j1);
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }
    }

    class ScrollChecker
        implements Runnable
    {

        final PtrFrameLayout a;
        private int b;
        private Scroller c;
        private boolean d;
        private int e;
        private int f;

        static boolean a(ScrollChecker scrollchecker)
        {
            return scrollchecker.d;
        }

        private void b()
        {
            if (PtrFrameLayout.a)
            {
                String s1 = a.b;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(PtrFrameLayout.b(a));
                CLog.v(s1, "finish, mCurrentPos:%s", aobj);
            }
            c();
            a.d();
        }

        private void c()
        {
            d = false;
            b = 0;
            a.removeCallbacks(this);
        }

        public void a()
        {
            if (d)
            {
                if (!c.isFinished())
                {
                    c.forceFinished(true);
                }
                a.c();
                c();
            }
        }

        public void a(int i1, int j1)
        {
            if (PtrFrameLayout.b(a) == i1)
            {
                return;
            }
            e = PtrFrameLayout.b(a);
            f = i1;
            int k1 = i1 - e;
            if (PtrFrameLayout.a)
            {
                String s1 = a.b;
                Object aobj[] = new Object[3];
                aobj[0] = Integer.valueOf(e);
                aobj[1] = Integer.valueOf(k1);
                aobj[2] = Integer.valueOf(i1);
                CLog.d(s1, "tryToScrollTo: start: %s, distance:%s, to:%s", aobj);
            }
            a.removeCallbacks(this);
            b = 0;
            c = new Scroller(a.getContext());
            c.startScroll(0, 0, 0, k1, j1);
            a.post(this);
            d = true;
        }

        public void run()
        {
            boolean flag;
            int i1;
            int j1;
            if (!c.computeScrollOffset() || c.isFinished())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i1 = c.getCurrY();
            j1 = i1 - b;
            if (PtrFrameLayout.a && j1 != 0)
            {
                String s1 = a.b;
                Object aobj[] = new Object[7];
                aobj[0] = Boolean.valueOf(flag);
                aobj[1] = Integer.valueOf(e);
                aobj[2] = Integer.valueOf(f);
                aobj[3] = Integer.valueOf(PtrFrameLayout.b(a));
                aobj[4] = Integer.valueOf(i1);
                aobj[5] = Integer.valueOf(b);
                aobj[6] = Integer.valueOf(j1);
                CLog.v(s1, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s", aobj);
            }
            if (!flag)
            {
                b = i1;
                PtrFrameLayout.a(a, j1);
                a.post(this);
                return;
            } else
            {
                b();
                return;
            }
        }

        public ScrollChecker()
        {
            a = PtrFrameLayout.this;
            super();
            d = false;
            c = new Scroller(getContext());
        }
    }


    public static boolean a = false;
    private static int e = 1;
    private static byte f = 1;
    private static byte g = 2;
    private boolean A;
    private int B;
    private int C;
    private boolean D;
    private boolean E;
    private MotionEvent F;
    private MotionEvent G;
    private PtrUIHandlerHook H;
    private int I;
    private long J;
    protected final String b;
    protected View c;
    protected int d;
    private int h;
    private int i;
    private float j;
    private int k;
    private int l;
    private float m;
    private boolean n;
    private boolean o;
    private View p;
    private PtrUIHandlerHolder q;
    private PtrHandler r;
    private ScrollChecker s;
    private PointF t;
    private int u;
    private int v;
    private int w;
    private int x;
    private byte y;
    private boolean z;

    public PtrFrameLayout(Context context)
    {
        this(context, null);
    }

    public PtrFrameLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public PtrFrameLayout(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        StringBuilder stringbuilder = (new StringBuilder()).append("ptr-frame-");
        int j1 = 1 + e;
        e = j1;
        b = stringbuilder.append(j1).toString();
        d = 0;
        h = 0;
        i = 0;
        j = 1.7F;
        k = 200;
        l = 1000;
        m = 1.2F;
        n = true;
        o = false;
        q = PtrUIHandlerHolder.b();
        t = new PointF();
        u = 0;
        v = 0;
        y = 1;
        z = false;
        A = false;
        B = 0;
        C = 0;
        D = false;
        E = false;
        I = 500;
        J = 0L;
        PtrLocalDisplay.a(getContext());
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, R.styleable.PtrFrameLayout, 0, 0);
        if (typedarray != null)
        {
            h = typedarray.getResourceId(0, h);
            i = typedarray.getResourceId(1, i);
            j = typedarray.getFloat(2, j);
            k = typedarray.getInt(4, k);
            l = typedarray.getInt(5, l);
            m = typedarray.getFloat(3, m);
            n = typedarray.getBoolean(7, n);
            o = typedarray.getBoolean(6, o);
            typedarray.recycle();
        }
        s = new ScrollChecker();
        w = 2 * ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void a()
    {
        int i1 = u;
        int j1 = getPaddingLeft();
        int k1 = getPaddingTop();
        if (p != null)
        {
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams1 = (android.view.ViewGroup.MarginLayoutParams)p.getLayoutParams();
            int l2 = j1 + marginlayoutparams1.leftMargin;
            int i3 = (i1 + (k1 + marginlayoutparams1.topMargin)) - x;
            int j3 = l2 + p.getMeasuredWidth();
            int k3 = i3 + p.getMeasuredHeight();
            p.layout(l2, i3, j3, k3);
            if (!a);
        }
        if (c != null)
        {
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)c.getLayoutParams();
            int l1 = j1 + marginlayoutparams.leftMargin;
            int i2 = i1 + (k1 + marginlayoutparams.topMargin);
            int j2 = l1 + c.getMeasuredWidth();
            int k2 = i2 + c.getMeasuredHeight();
            if (!a);
            c.layout(l1, i2, j2, k2);
        }
    }

    private void a(float f1)
    {
        if (f1 < 0.0F && u == 0)
        {
            if (a)
            {
                CLog.e(b, String.format("has reached the top", new Object[0]));
            }
            return;
        }
        int i1 = u + (int)f1;
        int j1;
        if (i1 < 0)
        {
            boolean flag = a;
            j1 = 0;
            if (flag)
            {
                CLog.e(b, String.format("over top", new Object[0]));
            }
        } else
        {
            j1 = i1;
        }
        u = j1;
        b();
        v = u;
    }

    private void a(View view, int i1, int j1)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        view.measure(getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight() + marginlayoutparams.leftMargin + marginlayoutparams.rightMargin, marginlayoutparams.width), getChildMeasureSpec(j1, getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin, marginlayoutparams.height));
    }

    static void a(PtrFrameLayout ptrframelayout)
    {
        ptrframelayout.o();
    }

    static void a(PtrFrameLayout ptrframelayout, float f1)
    {
        ptrframelayout.a(f1);
    }

    static void a(PtrFrameLayout ptrframelayout, boolean flag)
    {
        ptrframelayout.c(flag);
    }

    static int b(PtrFrameLayout ptrframelayout)
    {
        return ptrframelayout.u;
    }

    private void b()
    {
        int i1 = u - v;
        if (i1 == 0)
        {
            return;
        }
        if (v == 0 && u != 0 && q.a())
        {
            if (y == 1)
            {
                y = 2;
                q.b(this);
                if (a)
                {
                    String s2 = b;
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(B);
                    CLog.i(s2, "PtrUIHandler: onUIRefreshPrepare, mAutoScrollRefreshTag %s", aobj1);
                }
            }
            if (z && E)
            {
                p();
            }
        }
        if (v != 0 && u == 0)
        {
            m();
            if (z && E)
            {
                q();
            }
        }
        if (y == 2)
        {
            if (z && B == 0 && o && v < d && u >= d)
            {
                k();
            }
            if (B == g && v < x && u >= x)
            {
                k();
            }
        }
        if (a)
        {
            String s1 = b;
            Object aobj[] = new Object[5];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Integer.valueOf(u);
            aobj[2] = Integer.valueOf(v);
            aobj[3] = Integer.valueOf(c.getTop());
            aobj[4] = Integer.valueOf(x);
            CLog.v(s1, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s", aobj);
        }
        p.offsetTopAndBottom(i1);
        c.offsetTopAndBottom(i1);
        invalidate();
        float f1;
        float f2;
        if (x == 0)
        {
            f1 = 0.0F;
        } else
        {
            f1 = (1.0F * (float)v) / (float)x;
        }
        if (x == 0)
        {
            f2 = 0.0F;
        } else
        {
            f2 = (1.0F * (float)u) / (float)x;
        }
        if (q.a())
        {
            q.a(this, z, y, v, u, f1, f2);
        }
        a(z, y, v, u, f1, f2);
    }

    private void b(boolean flag)
    {
        k();
        if (y == 3)
        {
            if (n)
            {
                if (u > x && !flag)
                {
                    s.a(x, k);
                }
                return;
            } else
            {
                h();
                return;
            }
        }
        if (y == 4)
        {
            c(false);
            return;
        } else
        {
            j();
            return;
        }
    }

    private void c(boolean flag)
    {
        if (u != 0 && !flag && H != null)
        {
            if (a)
            {
                CLog.d(b, "notifyUIRefreshComplete mRefreshCompleteHook run.");
            }
            H.a();
            return;
        }
        if (q.a())
        {
            if (a)
            {
                CLog.i(b, "PtrUIHandler: onUIRefreshComplete");
            }
            q.d(this);
        }
        i();
        m();
    }

    private void g()
    {
        if (!z)
        {
            s.a(0, l);
        }
    }

    private void h()
    {
        g();
    }

    private void i()
    {
        g();
    }

    private void j()
    {
        g();
    }

    private boolean k()
    {
        while (y != 2 || (u < x || B <= 0) && u < d) 
        {
            return false;
        }
        y = 3;
        l();
        return false;
    }

    private void l()
    {
        J = System.currentTimeMillis();
        if (q.a())
        {
            q.c(this);
            if (a)
            {
                CLog.i(b, "PtrUIHandler: onUIRefreshBegin");
            }
        }
        if (r != null)
        {
            r.a(this);
        }
    }

    private boolean m()
    {
        if ((y == 4 || y == 2) && u == 0)
        {
            if (q.a())
            {
                q.a(this);
                if (a)
                {
                    CLog.i(b, "PtrUIHandler: onUIReset");
                }
            }
            y = 1;
            B = 0;
            return true;
        } else
        {
            return false;
        }
    }

    private boolean n()
    {
        return u == 0;
    }

    private void o()
    {
        y = 4;
        if (ScrollChecker.a(s) && B > 0)
        {
            if (a)
            {
                String s1 = b;
                Object aobj[] = new Object[2];
                aobj[0] = Boolean.valueOf(ScrollChecker.a(s));
                aobj[1] = Integer.valueOf(B);
                CLog.d(s1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s", aobj);
            }
            return;
        } else
        {
            c(false);
            return;
        }
    }

    private void p()
    {
        if (a)
        {
            CLog.d(b, "send cancel event");
        }
        a(MotionEvent.obtain(F.getDownTime(), F.getEventTime() + (long)ViewConfiguration.getLongPressTimeout(), 3, F.getX(), F.getY(), F.getMetaState()));
    }

    private void q()
    {
        if (a)
        {
            CLog.d(b, "send down event");
        }
        MotionEvent motionevent = G;
        a(MotionEvent.obtain(motionevent.getDownTime(), motionevent.getEventTime(), 0, motionevent.getX(), motionevent.getY(), motionevent.getMetaState()));
    }

    public void a(PtrUIHandler ptruihandler)
    {
        PtrUIHandlerHolder.a(q, ptruihandler);
    }

    public void a(boolean flag)
    {
        A = flag;
    }

    protected void a(boolean flag, byte byte0, int i1, int j1, float f1, float f2)
    {
    }

    public boolean a(MotionEvent motionevent)
    {
        return super.dispatchTouchEvent(motionevent);
    }

    protected void c()
    {
        if (u > 0 && B > 0)
        {
            if (a)
            {
                CLog.d(b, "call onRelease after scroll abort");
            }
            b(true);
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    protected void d()
    {
        if (u > 0 && B > 0)
        {
            if (a)
            {
                CLog.d(b, "call onRelease after scroll finish");
            }
            b(true);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (isEnabled() && c != null && p != null) goto _L2; else goto _L1
_L1:
        flag = a(motionevent);
_L9:
        return flag;
_L2:
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 64
    //                   0 126
    //                   1 70
    //                   2 196
    //                   3 70;
           goto _L3 _L4 _L5 _L6 _L5
_L3:
        return a(motionevent);
_L5:
        z = false;
        if (u > 0)
        {
            if (a)
            {
                CLog.d(b, "call onRelease when user release");
            }
            b(false);
            if (u == C)
            {
                return a(motionevent);
            }
        } else
        {
            return a(motionevent);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        F = motionevent;
        t.set(motionevent.getX(), motionevent.getY());
        s.a();
        z = flag;
        D = false;
        if (!E || u <= 0)
        {
            a(motionevent);
        }
        C = u;
        return flag;
_L6:
        float f2;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        G = motionevent;
        float f1 = motionevent.getX() - t.x;
        f2 = (int)(motionevent.getY() - t.y);
        t.set(motionevent.getX(), motionevent.getY());
        if (A && !D && (Math.abs(f1) > (float)w || Math.abs(f1) > 3F * Math.abs(f2)) && n())
        {
            D = flag;
        }
        if (D)
        {
            return a(motionevent);
        }
        if (f2 > 0.0F)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (u > 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if (a)
        {
            boolean flag4;
            String s1;
            Object aobj[];
            if (r != null && r.a(this, c, p))
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            s1 = b;
            aobj = new Object[6];
            aobj[0] = Float.valueOf(f2);
            aobj[flag] = Integer.valueOf(u);
            aobj[2] = Boolean.valueOf(flag2);
            aobj[3] = Boolean.valueOf(flag3);
            aobj[4] = Boolean.valueOf(flag1);
            aobj[5] = Boolean.valueOf(flag4);
            CLog.v(s1, "ACTION_MOVE: offsetY:%s, mCurrentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s", aobj);
        }
        if (flag1 && r != null && !r.a(this, c, p))
        {
            return a(motionevent);
        }
        if ((!flag2 || !flag3) && !flag1) goto _L3; else goto _L7
_L7:
        a((float)((double)f2 / (double)j));
        return flag;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final void e()
    {
        if (a)
        {
            CLog.i(b, "refreshComplete");
        }
        if (H != null)
        {
            H.b();
        }
        int i1 = (int)((long)I - (System.currentTimeMillis() - J));
        if (i1 <= 0)
        {
            if (a)
            {
                CLog.d(b, "performRefreshComplete at once");
            }
            o();
        } else
        {
            postDelayed(new Runnable() {

                final PtrFrameLayout a;

                public void run()
                {
                    PtrFrameLayout.a(a);
                }

            
            {
                a = PtrFrameLayout.this;
                super();
            }
            }, i1);
            if (a)
            {
                String s1 = b;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(i1);
                CLog.d(s1, "performRefreshComplete after delay: %s", aobj);
                return;
            }
        }
    }

    public boolean f()
    {
        return o;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new LayoutParams(layoutparams);
    }

    public View getContentView()
    {
        return c;
    }

    public float getDurationToClose()
    {
        return (float)k;
    }

    public long getDurationToCloseHeader()
    {
        return (long)l;
    }

    public int getHeaderHeight()
    {
        return x;
    }

    public View getHeaderView()
    {
        return p;
    }

    public int getOffsetToRefresh()
    {
        return d;
    }

    public float getRatioOfHeaderToHeightRefresh()
    {
        return m;
    }

    public float getResistance()
    {
        return j;
    }

    protected void onFinishInflate()
    {
        int i1 = getChildCount();
        if (i1 > 2)
        {
            throw new IllegalStateException("PtrFrameLayout only can host 2 elements");
        }
        if (i1 == 2)
        {
            if (h != 0 && p == null)
            {
                p = findViewById(h);
            }
            if (i != 0 && c == null)
            {
                c = findViewById(i);
            }
            if (c == null || p == null)
            {
                View view = getChildAt(0);
                View view1 = getChildAt(1);
                if (view instanceof PtrUIHandler)
                {
                    p = view;
                    c = view1;
                } else
                if (view1 instanceof PtrUIHandler)
                {
                    p = view1;
                    c = view;
                } else
                if (c == null && p == null)
                {
                    p = view;
                    c = view1;
                } else
                if (p == null)
                {
                    if (c != view)
                    {
                        view1 = view;
                    }
                    p = view1;
                } else
                {
                    if (p != view)
                    {
                        view1 = view;
                    }
                    c = view1;
                }
            }
        } else
        if (i1 == 1)
        {
            c = getChildAt(0);
        } else
        {
            TextView textview = new TextView(getContext());
            textview.setClickable(true);
            textview.setTextColor(-39424);
            textview.setGravity(17);
            textview.setTextSize(20F);
            textview.setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
            c = textview;
            addView(c);
        }
        super.onFinishInflate();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        a();
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        if (!a);
        if (p != null)
        {
            measureChildWithMargins(p, i1, 0, j1, 0);
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)p.getLayoutParams();
            x = p.getMeasuredHeight() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin;
            d = (int)((float)x * m);
            if (!a);
        }
        if (c != null)
        {
            a(c, i1, j1);
            if (!a);
        }
    }

    public void setDurationToClose(int i1)
    {
        k = i1;
    }

    public void setDurationToCloseHeader(int i1)
    {
        l = i1;
    }

    public void setHeaderView(View view)
    {
        if (p != null && view != null && p != view)
        {
            removeView(p);
        }
        if (view.getLayoutParams() == null)
        {
            view.setLayoutParams(new LayoutParams(-1, -2));
        }
        p = view;
        addView(view);
    }

    public void setInterceptEventWhileWorking(boolean flag)
    {
        E = flag;
    }

    public void setKeepHeaderWhenRefresh(boolean flag)
    {
        n = flag;
    }

    public void setLoadingMinTime(int i1)
    {
        I = i1;
    }

    public void setOffsetToRefresh(int i1)
    {
        d = i1;
    }

    public void setPtrHandler(PtrHandler ptrhandler)
    {
        r = ptrhandler;
    }

    public void setPullToRefresh(boolean flag)
    {
        o = flag;
    }

    public void setRatioOfHeaderHeightToRefresh(float f1)
    {
        m = f1;
        d = (int)((float)x * m);
    }

    public void setRefreshCompleteHook(PtrUIHandlerHook ptruihandlerhook)
    {
        H = ptruihandlerhook;
        ptruihandlerhook.b(new Runnable() {

            final PtrFrameLayout a;

            public void run()
            {
                if (PtrFrameLayout.a)
                {
                    CLog.d(a.b, "mRefreshCompleteHook resume.");
                }
                PtrFrameLayout.a(a, true);
            }

            
            {
                a = PtrFrameLayout.this;
                super();
            }
        });
    }

    public void setResistance(float f1)
    {
        j = f1;
    }

}
