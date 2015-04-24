// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.snapchat.android.util.bitmap.BitmapPool;

// Referenced classes of package com.snapchat.android:
//            ApplicationMemoryMonitor, Timber

class a
    implements ComponentCallbacks2
{

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

    (ApplicationMemoryMonitor applicationmemorymonitor)
    {
        a = applicationmemorymonitor;
        super();
    }
}
