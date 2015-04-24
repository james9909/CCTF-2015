// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.net.URL;
import java.util.Map;

// Referenced classes of package crittercism.android:
//            cq, bj, ce, bf, 
//            cs, ck, au, cg

final class cp extends cq
{

    private bj a;
    private bj b;
    private au c;
    private URL d;
    private String e;
    private cg f;

    cp(bj bj1, bj bj2, au au, URL url, cg cg)
    {
        bj1.d();
        b = bj1;
        a = bj2;
        c = au;
        d = url;
        e = bj1.d();
        f = cg;
    }

    public final void a()
    {
        a.a(b);
        ce ce1 = new ce(c);
        String s = e;
        bj bj1 = b;
        ce1.a.put(s, (new bf(bj1)).a);
        (new cs(ce1, new ck(d), true, f)).run();
    }
}
