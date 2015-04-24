// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import java.util.Map;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngineStatic

static final class d
    implements Runnable
{

    final String a;
    final Map b;
    final long c;
    final boolean d;

    public void run()
    {
        ScAnalyticsEventEngineStatic.a(a, b, c, d);
    }

    (String s, Map map, long l, boolean flag)
    {
        a = s;
        b = map;
        c = l;
        d = flag;
        super();
    }
}
