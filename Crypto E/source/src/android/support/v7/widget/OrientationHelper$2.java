// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            OrientationHelper

static final class anager extends OrientationHelper
{

    public int a(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.h(view) - arams.topMargin;
    }

    public void a(int i)
    {
        a.i(i);
    }

    public int b(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.j(view) + arams.bottomMargin;
    }

    public int c()
    {
        return a.r();
    }

    public int c(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.f(view) + arams.topMargin + arams.bottomMargin;
    }

    public int d()
    {
        return a.p() - a.t();
    }

    public int d(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.e(view) + arams.leftMargin + arams.rightMargin;
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

    anager(anager anager)
    {
        super(anager, null);
    }
}
