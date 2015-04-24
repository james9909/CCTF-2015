// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

public class TouchInterceptionFrameLayout extends FrameLayout
{
    public static interface TouchInterceptionListener
    {

        public abstract void a(MotionEvent motionevent);

        public abstract void a(MotionEvent motionevent, float f1, float f2);

        public abstract boolean a(MotionEvent motionevent, boolean flag, float f1, float f2);

        public abstract void b(MotionEvent motionevent);
    }


    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private PointF e;
    private MotionEvent f;
    private TouchInterceptionListener g;

    public TouchInterceptionFrameLayout(Context context)
    {
        super(context);
    }

    public TouchInterceptionFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public TouchInterceptionFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private MotionEvent a(MotionEvent motionevent, int i)
    {
        MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
        motionevent1.setAction(i);
        return motionevent1;
    }

    private transient void a(MotionEvent motionevent, MotionEvent amotionevent[])
    {
        if (motionevent != null)
        {
            int i = -1 + getChildCount();
            while (i >= 0) 
            {
                View view = getChildAt(i);
                if (view != null)
                {
                    Rect rect = new Rect();
                    view.getHitRect(rect);
                    MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
                    if (rect.contains((int)motionevent1.getX(), (int)motionevent1.getY()))
                    {
                        float f1 = -view.getLeft();
                        float f2 = -view.getTop();
                        boolean flag;
                        if (amotionevent != null)
                        {
                            int j = amotionevent.length;
                            int k = 0;
                            flag = false;
                            for (; k < j; k++)
                            {
                                MotionEvent motionevent2 = amotionevent[k];
                                if (motionevent2 != null)
                                {
                                    MotionEvent motionevent3 = MotionEvent.obtainNoHistory(motionevent2);
                                    motionevent3.offsetLocation(f1, f2);
                                    flag |= view.dispatchTouchEvent(motionevent3);
                                }
                            }

                        } else
                        {
                            flag = false;
                        }
                        motionevent1.offsetLocation(f1, f2);
                        if (flag | view.dispatchTouchEvent(motionevent1))
                        {
                            return;
                        }
                    }
                }
                i--;
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (g == null)
        {
            return false;
        }
        switch (motionevent.getActionMasked())
        {
        case 1: // '\001'
        default:
            return false;

        case 0: // '\0'
            e = new PointF(motionevent.getX(), motionevent.getY());
            f = MotionEvent.obtainNoHistory(motionevent);
            b = true;
            a = g.a(motionevent, false, 0.0F, 0.0F);
            c = a;
            d = false;
            return a;

        case 2: // '\002'
            break;
        }
        if (e == null)
        {
            e = new PointF(motionevent.getX(), motionevent.getY());
        }
        float f1 = motionevent.getX() - e.x;
        float f2 = motionevent.getY() - e.y;
        a = g.a(motionevent, true, f1, f2);
        return a;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 3: default 40
    //                   0 46
    //                   1 340
    //                   2 74
    //                   3 340;
           goto _L2 _L3 _L4 _L5 _L4
_L2:
        return super.onTouchEvent(motionevent);
_L3:
        if (a)
        {
            g.a(motionevent);
            a(motionevent, new MotionEvent[0]);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (e == null)
        {
            e = new PointF(motionevent.getX(), motionevent.getY());
        }
        float f1 = motionevent.getX() - e.x;
        float f2 = motionevent.getY() - e.y;
        a = g.a(motionevent, true, f1, f2);
        if (a)
        {
            if (!c)
            {
                c = true;
                MotionEvent motionevent3 = MotionEvent.obtainNoHistory(f);
                motionevent3.setLocation(motionevent.getX(), motionevent.getY());
                g.a(motionevent3);
                e = new PointF(motionevent.getX(), motionevent.getY());
                f2 = 0.0F;
                f1 = 0.0F;
            }
            if (!d)
            {
                d = true;
                a(a(motionevent, 3), new MotionEvent[0]);
            }
            g.a(motionevent, f1, f2);
            b = true;
            return true;
        }
        if (b)
        {
            b = false;
            MotionEvent motionevent2 = MotionEvent.obtainNoHistory(f);
            motionevent2.setLocation(motionevent.getX(), motionevent.getY());
            a(motionevent, new MotionEvent[] {
                motionevent2
            });
        } else
        {
            a(motionevent, new MotionEvent[0]);
        }
        c = false;
        d = false;
        if (true) goto _L2; else goto _L4
_L4:
        c = false;
        if (a)
        {
            g.b(motionevent);
        }
        if (!d)
        {
            d = true;
            if (b)
            {
                b = false;
                MotionEvent motionevent1 = MotionEvent.obtainNoHistory(f);
                motionevent1.setLocation(motionevent.getX(), motionevent.getY());
                a(motionevent, new MotionEvent[] {
                    motionevent1
                });
            } else
            {
                a(motionevent, new MotionEvent[0]);
            }
        }
        return true;
    }

    public void setScrollInterceptionListener(TouchInterceptionListener touchinterceptionlistener)
    {
        g = touchinterceptionlistener;
    }
}
