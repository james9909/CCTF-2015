// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

// Referenced classes of package crittercism.android:
//            cq, bj, au, ch, 
//            cp, cj, co

public final class cn
{

    private Context a;
    private List b;

    public cn(Context context)
    {
        a = context;
        b = new ArrayList();
    }

    public final void a()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add(new Thread((cq)iterator.next()))) { }
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); ((Thread)iterator1.next()).start()) { }
        for (Iterator iterator2 = arraylist.iterator(); iterator2.hasNext(); ((Thread)iterator2.next()).join()) { }
    }

    public final void a(bj bj1, ch ch1, String s, au au1)
    {
        this;
        JVM INSTR monitorenter ;
        if (bj1.b() > 0)
        {
            bj bj2 = bj1.a(a);
            cg cg = ch1.a(bj2, bj1, s, a, au1, au1.i());
            cp cp1 = new cp(bj2, bj1, au1, (new cj(s, bj2.e())).a(), cg);
            b.add(cp1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(co co1, ExecutorService executorservice)
    {
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            cq cq1 = (cq)iterator.next();
            if (!co1.a(cq1))
            {
                executorservice.execute(cq1);
            }
        } while (true);
    }
}
