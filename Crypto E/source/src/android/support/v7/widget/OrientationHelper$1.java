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
        return a.g(view) - arams.leftMargin;
    }

    public void a(int i)
    {
        a.h(i);
    }

    public int b(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.i(view) + arams.rightMargin;
    }

    public int c()
    {
        return a.q();
    }

    public int c(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.e(view) + arams.leftMargin + arams.rightMargin;
    }

    public int d()
    {
        return a.o() - a.s();
    }

    public int d(View view)
    {
        arams arams = (arams)view.getLayoutParams();
        return a.f(view) + arams.topMargin + arams.bottomMargin;
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

    anager(anager anager)
    {
        super(anager, null);
    }
}
