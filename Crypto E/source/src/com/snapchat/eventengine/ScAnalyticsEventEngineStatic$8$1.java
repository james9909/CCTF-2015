// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic, DatabaseHelper, WorkerThread

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        ScAnalyticsEventEngineStatic.a(false);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/eventengine/ScAnalyticsEventEngineStatic$8

/* anonymous class */
    static final class ScAnalyticsEventEngineStatic._cls8
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
                ScAnalyticsEventEngineStatic.a.a(new ScAnalyticsEventEngineStatic._cls8._cls1(this));
            }
        }

            
            {
                a = l;
                super();
            }
    }

}
