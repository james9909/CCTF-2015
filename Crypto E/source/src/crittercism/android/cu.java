// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.Map;

// Referenced classes of package crittercism.android:
//            cq, df, cz, au, 
//            dc

public final class cu extends cq
{

    public Map a;
    private df b;
    private au c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;

    private void a(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        a.put(s, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        boolean flag = b.c();
        if (d)
        {
            a("optOutStatus", Boolean.valueOf(flag));
        }
        if (!flag)
        {
            if (e)
            {
                a("crashedOnLastLoad", Boolean.valueOf(cz.a));
            }
            if (f)
            {
                a("userUUID", c.c());
            }
            if (g)
            {
                dc dc1 = b.a();
                boolean flag1;
                if (dc1.a && !dc1.b && dc1.c >= dc1.d && (dc1.c - dc1.d) % dc1.e == 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                a("shouldShowRateAppAlert", Boolean.valueOf(flag1));
                a("message", dc1.f);
                a("title", dc1.g);
            }
        }
    }
}
