// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            ScAnalyticsPlatform

public class ScAnalyticsMetric
{
    public static class ScAnalyticsMetricFactory
    {

        public ScAnalyticsMetric a(String s)
        {
            return new ScAnalyticsMetric(s);
        }

        public ScAnalyticsMetricFactory()
        {
        }
    }


    protected ScAnalyticsPlatform a;
    protected String b;
    private final Map c = new HashMap();
    private boolean d;
    private final Clock e = (new ClockProvider()).a();
    private long f;
    private String g;

    public ScAnalyticsMetric(String s)
    {
        f = -1L;
        SnapchatApplication.e().a(this);
        b = s;
        d = false;
    }

    public ScAnalyticsMetric a(long l)
    {
        String s = (new BigDecimal(l)).divide(new BigDecimal(1000), 1, 4).toString();
        a(g, s);
        return this;
    }

    public ScAnalyticsMetric a(String s)
    {
        f = e.b();
        g = s;
        return this;
    }

    public ScAnalyticsMetric a(String s, long l)
    {
        return a(s, Long.valueOf(l));
    }

    public ScAnalyticsMetric a(String s, Object obj)
    {
        c.put(s, obj);
        return this;
    }

    public ScAnalyticsMetric a(String s, String s1)
    {
        return a(s, s1);
    }

    public ScAnalyticsMetric a(Map map)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return this;
    }

    public boolean a()
    {
        return f != -1L;
    }

    public Long b(String s)
    {
        return (Long)c.get(s);
    }

    public void b()
    {
        if (UserPrefs.w())
        {
            Timber.b("ScAnalyticsMetric", "User is logged into SnapKidz. Aborting.", new Object[0]);
            return;
        }
        if (d)
        {
            Timber.e("ScAnalyticsMetric", "Metric has already been previously reported. Aborting", new Object[0]);
            return;
        }
        if (a())
        {
            a(e.b() - f);
        }
        Timber.b("ScAnalyticsMetric", (new StringBuilder()).append(b).append(": ").append(c).toString(), new Object[0]);
        a.a(b, c);
        d = true;
    }
}
