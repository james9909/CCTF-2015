// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic, DatabaseHelper, WorkerThread

static final class a
    implements Runnable
{

    final long a;

    public void run()
    {
        DatabaseHelper databasehelper = DatabaseHelper.a(ScAnalyticsEventEngineStatic.g());
        databasehelper.b(a);
        ScAnalyticsEventEngineStatic.m().set(false);
        if (databasehelper.a() > 30L)
        {
            ScAnalyticsEventEngineStatic.a.a(new Runnable() {

                final ScAnalyticsEventEngineStatic._cls8 a;

                public void run()
                {
                    ScAnalyticsEventEngineStatic.a(false);
                }

            
            {
                a = ScAnalyticsEventEngineStatic._cls8.this;
                super();
            }
            });
        }
    }

    _cls1.a(long l)
    {
        a = l;
        super();
    }
}
