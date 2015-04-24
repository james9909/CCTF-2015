// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.ViewGroup;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class b
{

    private final ataObservable a = new ataObservable();
    private boolean b;

    public abstract int a();

    public int a(int i)
    {
        return 0;
    }

    public abstract er a(ViewGroup viewgroup, int i);

    public void a(ataObserver ataobserver)
    {
        a.registerObserver(ataobserver);
    }

    public void a(er er)
    {
    }

    public abstract void a(er er, int i);

    public void a(RecyclerView recyclerview)
    {
    }

    public long b(int i)
    {
        return -1L;
    }

    public final er b(ViewGroup viewgroup, int i)
    {
        er er = a(viewgroup, i);
        er.e = i;
        return er;
    }

    public void b(ataObserver ataobserver)
    {
        a.unregisterObserver(ataobserver);
    }

    public void b(er er)
    {
    }

    public final void b(er er, int i)
    {
        er.b = i;
        if (b())
        {
            er.d = b(i);
        }
        a(er, i);
        er.a(1, 7);
    }

    public void b(RecyclerView recyclerview)
    {
    }

    public final boolean b()
    {
        return b;
    }

    public final void c()
    {
        a.a();
    }

    public final void c(int i)
    {
        a.a(i, 1);
    }

    public void c(er er)
    {
    }

    public er()
    {
        b = false;
    }
}
