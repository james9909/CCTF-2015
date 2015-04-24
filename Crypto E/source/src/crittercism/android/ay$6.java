// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            cq, ay, df, bd, 
//            cf, cs, ce, bi, 
//            ck, cj, ba

final class nit> extends cq
{

    final Throwable a;
    final long b;
    final ay c;

    public final void a()
    {
        if (c.g.c())
        {
            return;
        }
        synchronized (c.n)
        {
            if (c.A < 10)
            {
                bd bd1 = new bd(a, b);
                bd1.a("current_session", c.l);
                bd1.a(c.m);
                bd1.c = "he";
                if (c.n.a())
                {
                    JSONArray jsonarray = (new JSONArray()).put(bd1.a());
                    (new cs((new ce(ay.a)).a(bi.b.g(), jsonarray), new ck((new cj(c.w.k(), "/android_v2/handle_exceptions")).a()), null)).run();
                    ay ay1 = c;
                    ay1.A = 1 + ay1.A;
                    c.n.b();
                }
            }
        }
    }

    (ay ay1, Throwable throwable, long l)
    {
        c = ay1;
        a = throwable;
        b = l;
        super();
    }
}
