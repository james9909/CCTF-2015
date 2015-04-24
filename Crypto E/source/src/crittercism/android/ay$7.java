// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            cq, ay, df, bd, 
//            bj, cf, cn, ba

final class nit> extends cq
{

    final Throwable a;
    final long b;
    final ay c;

    public final void a()
    {
        if (!c.g.c())
        {
            bd bd1 = new bd(a, b);
            bd1.a("current_session", c.l);
            bd1.c = "he";
            if (c.i.a(bd1) && c.n.a())
            {
                cn cn1 = new cn(c.c);
                cn1.a(c.i, new <init>(), c.w.k(), ay.a);
                cn1.a(c.o, c.q);
                c.n.b();
                return;
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
