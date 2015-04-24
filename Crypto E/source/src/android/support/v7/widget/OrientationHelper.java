// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

public abstract class OrientationHelper
{

    protected final RecyclerView.LayoutManager a;
    private int b;

    private OrientationHelper(RecyclerView.LayoutManager layoutmanager)
    {
        b = 0x80000000;
        a = layoutmanager;
    }


    public static OrientationHelper a(RecyclerView.LayoutManager layoutmanager)
    {
        return new OrientationHelper(layoutmanager) {

            public int a(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.g(view) - layoutparams.leftMargin;
            }

            public void a(int i)
            {
                a.h(i);
            }

            public int b(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.i(view) + layoutparams.rightMargin;
            }

            public int c()
            {
                return a.q();
            }

            public int c(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.e(view) + layoutparams.leftMargin + layoutparams.rightMargin;
            }

            public int d()
            {
                return a.o() - a.s();
            }

            public int d(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.f(view) + layoutparams.topMargin + layoutparams.bottomMargin;
            }

            public int e()
            {
                return a.o();
            }

            public int f()
            {
                return a.o() - a.q() - a.s();
            }

            public int g()
            {
                return a.s();
            }

        };
    }

    public static OrientationHelper a(RecyclerView.LayoutManager layoutmanager, int i)
    {
        switch (i)
        {
        default:
            throw new IllegalArgumentException("invalid orientation");

        case 0: // '\0'
            return a(layoutmanager);

        case 1: // '\001'
            return b(layoutmanager);
        }
    }

    public static OrientationHelper b(RecyclerView.LayoutManager layoutmanager)
    {
        return new OrientationHelper(layoutmanager) {

            public int a(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.h(view) - layoutparams.topMargin;
            }

            public void a(int i)
            {
                a.i(i);
            }

            public int b(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.j(view) + layoutparams.bottomMargin;
            }

            public int c()
            {
                return a.r();
            }

            public int c(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.f(view) + layoutparams.topMargin + layoutparams.bottomMargin;
            }

            public int d()
            {
                return a.p() - a.t();
            }

            public int d(View view)
            {
                RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
                return a.e(view) + layoutparams.leftMargin + layoutparams.rightMargin;
            }

            public int e()
            {
                return a.p();
            }

            public int f()
            {
                return a.p() - a.r() - a.t();
            }

            public int g()
            {
                return a.t();
            }

        };
    }

    public abstract int a(View view);

    public void a()
    {
        b = f();
    }

    public abstract void a(int i);

    public int b()
    {
        if (0x80000000 == b)
        {
            return 0;
        } else
        {
            return f() - b;
        }
    }

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int f();

    public abstract int g();
}
