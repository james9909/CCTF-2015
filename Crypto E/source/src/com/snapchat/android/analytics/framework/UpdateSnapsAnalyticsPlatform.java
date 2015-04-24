// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform, PerformanceMetric

public class UpdateSnapsAnalyticsPlatform
    implements AnalyticsPlatform
{

    private List a;

    public UpdateSnapsAnalyticsPlatform()
    {
        a = new ArrayList();
    }

    public List a()
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.size();
        if (i > 0) goto _L2; else goto _L1
_L1:
        List list = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return list;
_L2:
        list = a;
        a = new ArrayList();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Activity activity)
    {
    }

    public void a(String s, Map map, Map map1, Map map2)
    {
        this;
        JVM INSTR monitorenter ;
        if (!PerformanceMetric.a(s) || ReleaseManager.f()) goto _L2; else goto _L1
_L1:
        double d = Math.random();
        if (d >= 0.90000000000000002D) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.snapchat.android.model.server.AnalyticsEvent.Builder builder;
        builder = new com.snapchat.android.model.server.AnalyticsEvent.Builder(s);
        builder.addParams(map);
        builder.addParams(map1);
        if (map2 == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = map2.entrySet().iterator(); iterator.hasNext(); builder.addTimer((String)entry.getKey(), ((Long)entry.getValue()).longValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_136;
        Exception exception;
        exception;
        throw exception;
        a.add(builder.build());
          goto _L3
    }

    public void a(List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        a.addAll(list);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public List b()
    {
        return a;
    }

    public void b(Activity activity)
    {
    }

    public void b(List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_11;
        }
        a = list;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
