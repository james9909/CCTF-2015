// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;

// Referenced classes of package android.support.v7.widget:
//            GridLayoutManager

public static class f extends f
{

    private int e;
    private int f;

    static int a(f f1)
    {
        return f1.e;
    }

    static int a(e e1, int i)
    {
        e1.f = i;
        return i;
    }

    static int b(f f1)
    {
        return f1.f;
    }

    static int b(f f1, int i)
    {
        f1.e = i;
        return i;
    }

    public int a()
    {
        return e;
    }

    public int b()
    {
        return f;
    }

    public (int i, int j)
    {
        super(i, j);
        e = -1;
        f = 0;
    }

    public f(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = -1;
        f = 0;
    }

    public f(android.view.LayoutParams layoutparams)
    {
        super(layoutparams);
        e = -1;
        f = 0;
    }

    public f(android.view.LayoutParams layoutparams)
    {
        super(layoutparams);
        e = -1;
        f = 0;
    }
}
