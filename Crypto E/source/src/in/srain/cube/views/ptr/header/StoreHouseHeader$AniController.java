// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import java.util.ArrayList;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            StoreHouseHeader, StoreHouseBarItem

class <init>
    implements Runnable
{

    final StoreHouseHeader a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;

    private void a()
    {
        f = true;
        b = 0;
        e = StoreHouseHeader.a(a) / a.a.size();
        c = StoreHouseHeader.b(a) / e;
        d = 1 + a.a.size() / c;
        run();
    }

    static void a(run run1)
    {
        run1.a();
    }

    private void b()
    {
        f = false;
        a.removeCallbacks(this);
    }

    static void b(s s)
    {
        s.b();
    }

    public void run()
    {
        int i = b % c;
        int j = 0;
        while (j < d) 
        {
            int k = i + j * c;
            if (k <= b)
            {
                int l = k % a.a.size();
                StoreHouseBarItem storehousebaritem = (StoreHouseBarItem)a.a.get(l);
                storehousebaritem.setFillAfter(false);
                storehousebaritem.setFillEnabled(true);
                storehousebaritem.setFillBefore(false);
                storehousebaritem.setDuration(StoreHouseHeader.c(a));
                storehousebaritem.a(StoreHouseHeader.d(a), StoreHouseHeader.e(a));
            }
            j++;
        }
        b = 1 + b;
        if (f)
        {
            a.postDelayed(this, e);
        }
    }

    private (StoreHouseHeader storehouseheader)
    {
        a = storehouseheader;
        super();
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = true;
    }

    f(StoreHouseHeader storehouseheader, f f1)
    {
        this(storehouseheader);
    }
}
