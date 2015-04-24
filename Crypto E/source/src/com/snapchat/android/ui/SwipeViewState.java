// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


public class SwipeViewState
{
    public static final class MotionState extends Enum
    {

        public static final MotionState a;
        public static final MotionState b;
        public static final MotionState c;
        private static final MotionState d[];

        public static MotionState valueOf(String s1)
        {
            return (MotionState)Enum.valueOf(com/snapchat/android/ui/SwipeViewState$MotionState, s1);
        }

        public static MotionState[] values()
        {
            return (MotionState[])d.clone();
        }

        static 
        {
            a = new MotionState("NOT_MOVING", 0);
            b = new MotionState("SWIPING", 1);
            c = new MotionState("AUTO_SCROLLING", 2);
            MotionState amotionstate[] = new MotionState[3];
            amotionstate[0] = a;
            amotionstate[1] = b;
            amotionstate[2] = c;
            d = amotionstate;
        }

        private MotionState(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class SwipeDirection extends Enum
    {

        public static final SwipeDirection a;
        public static final SwipeDirection b;
        private static final SwipeDirection c[];

        public static SwipeDirection valueOf(String s1)
        {
            return (SwipeDirection)Enum.valueOf(com/snapchat/android/ui/SwipeViewState$SwipeDirection, s1);
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


    protected SwipeDirection a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private float h;
    private float i;
    private MotionState j;
    private SwipeDirection k;
    private boolean l;
    private boolean m;
    private float n;

    public SwipeViewState()
    {
        j = MotionState.a;
    }

    public void A()
    {
        e(0);
        g = 0;
        c(0.0F);
    }

    protected int a(boolean flag, SwipeDirection swipedirection)
    {
        if (flag)
        {
            if (swipedirection == SwipeDirection.a)
            {
                return d;
            } else
            {
                return e;
            }
        }
        if (swipedirection == SwipeDirection.a)
        {
            return b;
        } else
        {
            return c;
        }
    }

    public void a(float f1)
    {
        n = f1;
    }

    public void a(int i1)
    {
        b = i1;
    }

    public void a(boolean flag)
    {
        l = flag;
    }

    public boolean a()
    {
        return m;
    }

    protected int b(boolean flag, SwipeDirection swipedirection)
    {
        if (flag)
        {
            if (swipedirection == SwipeDirection.b)
            {
                return d;
            } else
            {
                return e;
            }
        }
        if (swipedirection == SwipeDirection.b)
        {
            return b;
        } else
        {
            return c;
        }
    }

    public void b(float f1)
    {
        i = f1;
    }

    public void b(int i1)
    {
        d = i1;
    }

    public void b(boolean flag)
    {
        m = flag;
    }

    public boolean b()
    {
        return l;
    }

    public int c()
    {
        return b;
    }

    public int c(boolean flag)
    {
        return a(flag, a);
    }

    public void c(float f1)
    {
        h = f1;
    }

    public void c(int i1)
    {
        e = i1;
    }

    public int d()
    {
        return d;
    }

    public int d(boolean flag)
    {
        return b(flag, a);
    }

    public void d(int i1)
    {
        c = i1;
    }

    public int e()
    {
        return c;
    }

    public void e(int i1)
    {
        f = i1;
    }

    public int f()
    {
        return e;
    }

    public int g()
    {
        return f;
    }

    public float h()
    {
        return n;
    }

    public float i()
    {
        return h;
    }

    public void j()
    {
        j = MotionState.a;
    }

    public void k()
    {
        j = MotionState.b;
    }

    public void l()
    {
        j = MotionState.c;
    }

    public boolean m()
    {
        return j == MotionState.c;
    }

    public boolean n()
    {
        return h < i;
    }

    public boolean o()
    {
        return h < (float)f;
    }

    public void p()
    {
        g = f;
    }

    public boolean q()
    {
        return g != 0;
    }

    public boolean r()
    {
        return j != MotionState.a;
    }

    public boolean s()
    {
        return d != e;
    }

    public boolean t()
    {
        return b != c;
    }

    public void u()
    {
        if (n())
        {
            a = SwipeDirection.a;
            return;
        } else
        {
            a = SwipeDirection.b;
            return;
        }
    }

    public void v()
    {
        k = SwipeDirection.a;
    }

    public void w()
    {
        k = SwipeDirection.b;
    }

    public boolean x()
    {
        return k != a;
    }

    public int y()
    {
        return Math.min(g, f);
    }

    public int z()
    {
        return Math.max(g, f);
    }
}
