// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.snapchat.android.util.bitmap.BitmapPool;

// Referenced classes of package com.snapchat.android:
//            Timber

public class ApplicationMemoryMonitor
{

    protected final ComponentCallbacks2 a;
    private final BitmapPool b;

    public ApplicationMemoryMonitor()
    {
        this(BitmapPool.a());
    }

    protected ApplicationMemoryMonitor(BitmapPool bitmappool)
    {
        a = new ComponentCallbacks2() {

            final ApplicationMemoryMonitor a;

            public void onConfigurationChanged(Configuration configuration)
            {
            }

            public void onLowMemory()
            {
                Timber.b("ApplicationMemoryMonitor", "onLowMemory", new Object[0]);
                ApplicationMemoryMonitor.a(a).b();
            }

            public void onTrimMemory(int i)
            {
                Object aobj[] = new Object[1];
                aobj[0] = ApplicationMemoryMonitor.a(i);
                Timber.b("ApplicationMemoryMonitor", "onTrimMemory %s", aobj);
            }

            
            {
                a = ApplicationMemoryMonitor.this;
                super();
            }
        };
        b = bitmappool;
    }

    static BitmapPool a(ApplicationMemoryMonitor applicationmemorymonitor)
    {
        return applicationmemorymonitor.b;
    }

    static String a(int i)
    {
        return b(i);
    }

    private static String b(int i)
    {
        switch (i)
        {
        default:
            return "UNKNOWN";

        case 40: // '('
            return "TRIM_MEMORY_BACKGROUND";

        case 80: // 'P'
            return "TRIM_MEMORY_COMPLETE";

        case 60: // '<'
            return "TRIM_MEMORY_MODERATE";

        case 15: // '\017'
            return "TRIM_MEMORY_RUNNING_CRITICAL";

        case 10: // '\n'
            return "TRIM_MEMORY_RUNNING_LOW";

        case 5: // '\005'
            return "TRIM_MEMORY_RUNNING_MODERATE";

        case 20: // '\024'
            return "TRIM_MEMORY_UI_HIDDEN";
        }
    }

    public void a(Application application)
    {
        application.registerComponentCallbacks(a);
    }
}
