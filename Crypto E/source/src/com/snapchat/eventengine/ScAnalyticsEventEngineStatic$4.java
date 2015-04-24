// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;


// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic, WorkerThread, DatabaseHelper

static final class 
    implements Runnable
{

    final long a;

    public void run()
    {
        ScAnalyticsEventEngineStatic.a.b(ScAnalyticsEventEngineStatic.d());
        long l = ScAnalyticsEventEngineStatic.e();
        long l1 = ScAnalyticsEventEngineStatic.f();
        if (l != -1L && a - l1 < 15000L)
        {
            DatabaseHelper.a(ScAnalyticsEventEngineStatic.g()).c(l);
        }
        ScAnalyticsEventEngineStatic.a(a);
        ScAnalyticsEventEngineStatic.h();
        ScAnalyticsEventEngineStatic.b(a);
        ScAnalyticsEventEngineStatic.a();
    }
}
