// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;

public class TouchState
{

    private final float a[] = new float[2];
    private final int b[] = {
        -1, -1
    };
    private float c;
    private float d;
    private int e;
    private int f;
    private boolean g;

    public TouchState()
    {
        g = false;
    }

    public float a(int i)
    {
        return a[i];
    }

    public void a(int i, float f1)
    {
        a[i] = f1;
    }

    public void a(int i, int j)
    {
        if (i < 0 || i >= 2)
        {
            return;
        } else
        {
            b[i] = j;
            return;
        }
    }

    public void a(MotionEvent motionevent)
    {
        e = motionevent.getActionIndex();
        c = motionevent.getX(e);
        f = motionevent.getPointerId(e);
        if (b[1] != -1)
        {
            int i = motionevent.findPointerIndex(b[1]);
            if (i != -1)
            {
                d = motionevent.getX(i);
            }
        }
    }

    public void a(boolean flag)
    {
        g = flag;
    }

    public boolean a()
    {
        return g;
    }

    public int b()
    {
        return f;
    }

    public void b(int i)
    {
        b[i] = f;
        a[i] = c;
    }

    public boolean c()
    {
        return b[0] == -1 && b[1] == -1;
    }

    public boolean d()
    {
        return a[1] == 3.402823E+38F && f == 1;
    }

    public boolean e()
    {
        int i = f;
        int j = b[0];
        boolean flag = false;
        if (i == j)
        {
            flag = true;
        }
        return flag;
    }

    public boolean f()
    {
        return b[1] != -1;
    }

    public float g()
    {
        return c;
    }

    public float h()
    {
        return d;
    }
}
