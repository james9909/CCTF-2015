// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.Map;

// Referenced classes of package crittercism.android:
//            cq, ay, df, ce, 
//            de, cs, ck, cj, 
//            ba, cl

final class nit> extends cq
{

    final ay a;
    final ay b;

    public final void a()
    {
        if (a.g.c())
        {
            return;
        } else
        {
            ce ce1 = new ce(a);
            org.json.JSONObject jsonobject = a.z.a();
            ce1.a.put("metadata", jsonobject);
            (new cs(ce1, new ck((new cj(b.w.k(), "/android_v2/update_user_metadata")).a()), new cl(a.z))).run();
            return;
        }
    }

    (ay ay1, ay ay2)
    {
        b = ay1;
        a = ay2;
        super();
    }
}
