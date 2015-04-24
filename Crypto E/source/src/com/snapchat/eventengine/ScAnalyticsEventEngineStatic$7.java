// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import org.json.JSONArray;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic

static final class b
    implements Runnable
{

    final JSONArray a;
    final long b;

    public void run()
    {
        ScAnalyticsEventEngineStatic.a("https://sc-analytics.appspot.com/analytic_events", a, b);
    }

    (JSONArray jsonarray, long l)
    {
        a = jsonarray;
        b = l;
        super();
    }
}
