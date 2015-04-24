// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static class d
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

    static void a(c c1, RecyclerView recyclerview)
    {
        c1.a(recyclerview);
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
                    RecyclerView.s(recyclerview).c(a, b);
                } else
                {
                    RecyclerView.s(recyclerview).b(a, b, c);
                }
            } else
            {
                RecyclerView.s(recyclerview).c(a, b, c, d);
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

    public void a(int i, int j, int k, Interpolator interpolator)
    {
        a = i;
        b = j;
        c = k;
        d = interpolator;
        e = true;
    }

    public (int i, int j)
    {
        this(i, j, 0x80000000, null);
    }

    public <init>(int i, int j, int k, Interpolator interpolator)
    {
        e = false;
        f = 0;
        a = i;
        b = j;
        c = k;
        d = interpolator;
    }
}
