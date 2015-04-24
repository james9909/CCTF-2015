// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            ay, dg, co, cz, 
//            df, bd, cs, ce, 
//            bi, ck, cj, ba

public final class ax
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler a;
    private final ay b;

    public ax(ay ay1, Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        b = ay1;
        a = uncaughtexceptionhandler;
    }

    public final void uncaughtException(Thread thread, Throwable throwable)
    {
        ay ay1 = b;
        if (ay1.o != null) goto _L2; else goto _L1
_L1:
        dg.b("Crittercism", "Unable to handle application crash. Crittercism not yet initialized");
_L6:
        if (a != null && !(a instanceof ax))
        {
            a.uncaughtException(Thread.currentThread(), throwable);
        }
_L4:
        return;
_L2:
        ay1.o.b();
        cz.a(ay1.c, true);
        if (ay1.g.c())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (ay1.u)
        {
            bd bd1 = new bd(throwable, Thread.currentThread().getId());
            JSONArray jsonarray = (new JSONArray()).put(bd1.a());
            (new cs((new ce(ay1)).a(bi.e.g(), jsonarray), new ck((new cj(ay1.w.k(), "/android_v2/handle_crashes")).a()), null)).run();
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_222;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Exception exception;
        exception;
        if (a != null && !(a instanceof ax))
        {
            a.uncaughtException(Thread.currentThread(), throwable);
        }
        throw exception;
        ay1.a(throwable);
        continue; /* Loop/switch isn't completed */
        Throwable throwable1;
        throwable1;
        dg.a("Crittercism", "Unable to send crash", throwable1);
        if (a == null || (a instanceof ax)) goto _L4; else goto _L3
_L3:
        a.uncaughtException(Thread.currentThread(), throwable);
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
