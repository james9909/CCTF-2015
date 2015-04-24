// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.StudySettings;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.DeviceUtils;
import com.snapchat.android.util.NumberFormatUtils;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform, FlurryAnalyticsPlatform, UpdateSnapsAnalyticsPlatform, UserActionTracePlatform

public class EasyMetric
{
    public static class EasyMetricFactory
    {

        public EasyMetric a(String s)
        {
            return new EasyMetric(s);
        }

        public EasyMetricFactory()
        {
        }
    }


    private static int e = 0;
    protected String a;
    protected UpdateSnapsAnalyticsPlatform b;
    protected FlurryAnalyticsPlatform c;
    protected UserActionTracePlatform d;
    private Map f;
    private Map g;
    private Map h;
    private long i;
    private final Clock j;
    private final StudySettings k;
    private final DeviceUtils l;
    private final List m;

    public EasyMetric()
    {
        this(null, (new ClockProvider()).a(), StudySettings.a(), DeviceUtils.a());
    }

    public EasyMetric(String s)
    {
        this(s, (new ClockProvider()).a(), StudySettings.a(), DeviceUtils.a());
    }

    EasyMetric(String s, Clock clock, StudySettings studysettings, DeviceUtils deviceutils)
    {
        i = -1L;
        m = new ArrayList();
        SnapchatApplication.e().a(this);
        j = clock;
        a = s;
        k = studysettings;
        l = deviceutils;
        a(b);
        a(c);
        a(d);
    }

    private EasyMetric b(String s, Object obj)
    {
        return b(s, String.valueOf(obj));
    }

    public EasyMetric a()
    {
        i = j.b();
        return this;
    }

    public EasyMetric a(long l1)
    {
        a("timeBucket", NumberFormatUtils.a(l1));
        if (h == null)
        {
            h = new TreeMap();
        }
        h.put("time", Long.valueOf(l1));
        return this;
    }

    public EasyMetric a(AnalyticsPlatform analyticsplatform)
    {
        if (analyticsplatform == null)
        {
            throw new NullPointerException();
        } else
        {
            m.add(analyticsplatform);
            return this;
        }
    }

    public EasyMetric a(String s)
    {
        a = s;
        return this;
    }

    public EasyMetric a(String s, Object obj)
    {
        if (s == null)
        {
            s = "NULL - ANALYTICS ERROR";
        }
        if (obj == null)
        {
            obj = "null";
        }
        if (f == null)
        {
            f = new TreeMap();
        }
        f.put(s, obj);
        return this;
    }

    public EasyMetric a(String s, String s1)
    {
        return a(s, s1);
    }

    public EasyMetric a(Map map)
    {
        if (map != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a((String)entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        return this;
    }

    protected void a(String s, Map map)
    {
        if (map.size() > 0)
        {
            a(s, map);
        }
    }

    public void a(boolean flag)
    {
        if (UserPrefs.w())
        {
            Timber.b("EasyMetric", "User is logged into SnapKidz. Aborting logging action.", new Object[0]);
        } else
        {
            e = 1 + e;
            if (b())
            {
                a(j.b() - i);
            }
            a("study_settings", k.b());
            a("year_class", l.b());
            if (a == null)
            {
                throw new NullPointerException("No event name has been set.");
            }
            Timber.b("EasyMetric", (new StringBuilder()).append("TRACE - ").append(e).append(" (").append(a).append(") ").append(f).append(" ").append(g).append(" ").append(h).toString(), new Object[0]);
            Timber.f("EasyMetric", (new StringBuilder()).append("TRACE - ").append(e).append(" (").append(a).append(") ").append(f).append(" ").append(g).append(" ").append(h).toString(), new Object[0]);
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                AnalyticsPlatform analyticsplatform = (AnalyticsPlatform)iterator.next();
                if (!(analyticsplatform instanceof FlurryAnalyticsPlatform) || flag)
                {
                    analyticsplatform.a(a, f, g, h);
                }
            }
        }
    }

    public EasyMetric b(String s, String s1)
    {
        if (g == null)
        {
            g = new TreeMap();
        }
        g.put(s, s1);
        return this;
    }

    public EasyMetric b(Map map)
    {
        if (g == null)
        {
            g = new TreeMap();
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); b((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return this;
    }

    public boolean b()
    {
        return j != null && i != -1L;
    }

    public void c()
    {
        a(true);
    }

}
