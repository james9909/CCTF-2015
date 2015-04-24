// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic, Constants

static final class 
    implements Runnable
{

    final long a;

    public void run()
    {
        if (ScAnalyticsEventEngineStatic.i())
        {
            long l = ScAnalyticsEventEngineStatic.a("session_end", null, a, false);
            ScAnalyticsEventEngineStatic.g().getSharedPreferences(ScAnalyticsEventEngineStatic.j(), 0).edit().g(Constants.f, l).g(Constants.e, a).();
        }
        ScAnalyticsEventEngineStatic.k();
    }
}
