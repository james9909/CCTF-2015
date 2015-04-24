// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;


// Referenced classes of package android.support.v7.widget:
//            RecyclerView

class a
    implements allback
{

    final RecyclerView a;

    public ewHolder a(int i)
    {
        return a.a(i, true);
    }

    public void a(int i, int j)
    {
        a.a(i, j, true);
        a.g = true;
        ate.a(a.f, j);
    }

    public void a(pdateOp pdateop)
    {
        c(pdateop);
    }

    public void b(int i, int j)
    {
        a.a(i, j, false);
        a.g = true;
    }

    public void b(pdateOp pdateop)
    {
        c(pdateop);
    }

    public void c(int i, int j)
    {
        a.g(i, j);
        a.h = true;
    }

    void c(pdateOp pdateop)
    {
        switch (pdateop.a)
        {
        default:
            return;

        case 0: // '\0'
            RecyclerView.d(a).a(a, pdateop.b, pdateop.c);
            return;

        case 1: // '\001'
            RecyclerView.d(a).b(a, pdateop.b, pdateop.c);
            return;

        case 2: // '\002'
            RecyclerView.d(a).c(a, pdateop.b, pdateop.c);
            return;

        case 3: // '\003'
            RecyclerView.d(a).a(a, pdateop.b, pdateop.c, 1);
            break;
        }
    }

    public void d(int i, int j)
    {
        a.f(i, j);
        a.g = true;
    }

    public void e(int i, int j)
    {
        a.e(i, j);
        a.g = true;
    }

    pdateOp(RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
    }
}
