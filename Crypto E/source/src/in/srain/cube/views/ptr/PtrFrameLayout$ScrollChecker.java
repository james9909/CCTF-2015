// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import android.widget.Scroller;
import in.srain.cube.util.CLog;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrFrameLayout

class c
    implements Runnable
{

    final PtrFrameLayout a;
    private int b;
    private Scroller c;
    private boolean d;
    private int e;
    private int f;

    static boolean a(c c1)
    {
        return c1.d;
    }

    private void b()
    {
        if (PtrFrameLayout.a)
        {
            String s = a.b;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(PtrFrameLayout.b(a));
            CLog.v(s, "finish, mCurrentPos:%s", aobj);
        }
        c();
        a.d();
    }

    private void c()
    {
        d = false;
        b = 0;
        a.removeCallbacks(this);
    }

    public void a()
    {
        if (d)
        {
            if (!c.isFinished())
            {
                c.forceFinished(true);
            }
            a.c();
            c();
        }
    }

    public void a(int i, int j)
    {
        if (PtrFrameLayout.b(a) == i)
        {
            return;
        }
        e = PtrFrameLayout.b(a);
        f = i;
        int k = i - e;
        if (PtrFrameLayout.a)
        {
            String s = a.b;
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(e);
            aobj[1] = Integer.valueOf(k);
            aobj[2] = Integer.valueOf(i);
            CLog.d(s, "tryToScrollTo: start: %s, distance:%s, to:%s", aobj);
        }
        a.removeCallbacks(this);
        b = 0;
        c = new Scroller(a.getContext());
        c.startScroll(0, 0, 0, k, j);
        a.post(this);
        d = true;
    }

    public void run()
    {
        boolean flag;
        int i;
        int j;
        if (!c.computeScrollOffset() || c.isFinished())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = c.getCurrY();
        j = i - b;
        if (PtrFrameLayout.a && j != 0)
        {
            String s = a.b;
            Object aobj[] = new Object[7];
            aobj[0] = Boolean.valueOf(flag);
            aobj[1] = Integer.valueOf(e);
            aobj[2] = Integer.valueOf(f);
            aobj[3] = Integer.valueOf(PtrFrameLayout.b(a));
            aobj[4] = Integer.valueOf(i);
            aobj[5] = Integer.valueOf(b);
            aobj[6] = Integer.valueOf(j);
            CLog.v(s, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s", aobj);
        }
        if (!flag)
        {
            b = i;
            PtrFrameLayout.a(a, j);
            a.post(this);
            return;
        } else
        {
            b();
            return;
        }
    }

    public (PtrFrameLayout ptrframelayout)
    {
        a = ptrframelayout;
        super();
        d = false;
        c = new Scroller(ptrframelayout.getContext());
    }
}
