// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.google.android.gms.internal:
//            g, he, gw, br, 
//            bo, hf, hg, j

class x
    implements g, Runnable
{

    private u.b lu;
    private final List mk = new Vector();
    private final AtomicReference ml = new AtomicReference();
    CountDownLatch mm;

    public x(u.b b)
    {
        mm = new CountDownLatch(1);
        lu = b;
        if (he.dK())
        {
            gw.b(this);
            return;
        } else
        {
            run();
            return;
        }
    }

    private void aB()
    {
        if (!mk.isEmpty())
        {
            Iterator iterator = mk.iterator();
            while (iterator.hasNext()) 
            {
                Object aobj[] = (Object[])iterator.next();
                if (aobj.length == 1)
                {
                    ((g)ml.get()).a((MotionEvent)aobj[0]);
                } else
                if (aobj.length == 3)
                {
                    ((g)ml.get()).a(((Integer)aobj[0]).intValue(), ((Integer)aobj[1]).intValue(), ((Integer)aobj[2]).intValue());
                }
            }
        }
    }

    private Context i(Context context)
    {
        Context context1;
        if (((Boolean)br.pF.get()).booleanValue())
        {
            if ((context1 = context.getApplicationContext()) != null)
            {
                return context1;
            }
        }
        return context;
    }

    public String a(Context context)
    {
        if (aA())
        {
            g g1 = (g)ml.get();
            if (g1 != null)
            {
                aB();
                return g1.a(i(context));
            }
        }
        return "";
    }

    public String a(Context context, String s)
    {
        if (aA())
        {
            g g1 = (g)ml.get();
            if (g1 != null)
            {
                aB();
                return g1.a(i(context), s);
            }
        }
        return "";
    }

    public void a(int k, int l, int i1)
    {
        g g1 = (g)ml.get();
        if (g1 != null)
        {
            aB();
            g1.a(k, l, i1);
            return;
        } else
        {
            List list = mk;
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(k);
            aobj[1] = Integer.valueOf(l);
            aobj[2] = Integer.valueOf(i1);
            list.add(((Object) (aobj)));
            return;
        }
    }

    public void a(MotionEvent motionevent)
    {
        g g1 = (g)ml.get();
        if (g1 != null)
        {
            aB();
            g1.a(motionevent);
            return;
        } else
        {
            mk.add(((Object) (new Object[] {
                motionevent
            })));
            return;
        }
    }

    protected void a(g g1)
    {
        ml.set(g1);
    }

    protected boolean aA()
    {
        try
        {
            mm.await();
        }
        catch (InterruptedException interruptedexception)
        {
            hf.d("Interrupted during GADSignals creation.", interruptedexception);
            return false;
        }
        return true;
    }

    public void run()
    {
        a(j.a(lu.lH.xP, i(lu.lF)));
        mm.countDown();
        lu = null;
        return;
        Exception exception;
        exception;
        mm.countDown();
        lu = null;
        throw exception;
    }
}
