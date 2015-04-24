// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeViewState, SwipeImageView, SwipePageController

public class SwipeController
{
    public static interface OnScrollListener
    {

        public abstract void a(SwipeImageView swipeimageview);

        public abstract void a(SwipeImageView swipeimageview, boolean flag);

        public abstract void b(SwipeImageView swipeimageview);
    }


    private final SwipePageController a;
    private final SwipeImageView b;
    private final SwipeViewState c;
    private final List d = new ArrayList();

    protected SwipeController(SwipePageController swipepagecontroller, SwipeImageView swipeimageview, SwipeViewState swipeviewstate)
    {
        a = swipepagecontroller;
        b = swipeimageview;
        c = swipeviewstate;
    }

    private int a(int i, float f, float f1)
    {
        return (int)((1.0F - f1) * (float)i + f1 * f);
    }

    private boolean a(int i, int j)
    {
        boolean flag = true;
        if (i >= 0) goto _L2; else goto _L1
_L1:
        c.v();
        a();
_L4:
        c.p();
        return flag;
_L2:
        if (i != 0 && i != j)
        {
            if (i < j)
            {
                b.invalidate();
                flag = false;
            } else
            if (i > j)
            {
                c.w();
                a();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void c(int i)
    {
        b.post(new Runnable(i) {

            final int a;
            final SwipeController b;

            public void run()
            {
                b.a(a);
            }

            
            {
                b = SwipeController.this;
                a = i;
                super();
            }
        });
    }

    protected int a(SwipeViewState swipeviewstate, int i)
    {
        if (swipeviewstate.n())
        {
            return i;
        } else
        {
            return 0;
        }
    }

    public void a()
    {
        c.j();
        c.A();
        a.b(c.x());
        Iterator iterator = d.iterator();
        while (iterator.hasNext()) 
        {
            OnScrollListener onscrolllistener = (OnScrollListener)iterator.next();
            SwipeImageView swipeimageview = b;
            boolean flag;
            if (!c.x())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            onscrolllistener.a(swipeimageview, flag);
        }
    }

    public void a(float f)
    {
        c.b(f);
        if (c.r())
        {
            a.b(false);
        }
        c.j();
    }

    public void a(int i)
    {
        int j = a(c.g(), c.i(), c.h());
        boolean flag;
        if (c.g() != j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            boolean flag1 = a(j, i);
            c.e(j);
            if (!flag1)
            {
                for (Iterator iterator = d.iterator(); iterator.hasNext(); ((OnScrollListener)iterator.next()).a(b)) { }
            }
        }
        if (c.m())
        {
            c(i);
        }
    }

    public void a(OnScrollListener onscrolllistener)
    {
        d.add(onscrolllistener);
    }

    public void a(boolean flag, float f, int i)
    {
        c.c(f);
        if (!c.r())
        {
            for (Iterator iterator = d.iterator(); iterator.hasNext(); ((OnScrollListener)iterator.next()).b(b)) { }
            c.u();
            a.a(flag);
            c.e(a(c, i));
        }
        c.k();
        c.p();
        c.a(0.5F);
        b.invalidate();
        a(i);
    }

    public void b(int i)
    {
        c.l();
        if (c.o())
        {
            c.c(-0.05F * (float)i);
        } else
        {
            c.c(1.05F * (float)i);
        }
        c.a(0.2F);
        b.invalidate();
        a(i);
    }
}
