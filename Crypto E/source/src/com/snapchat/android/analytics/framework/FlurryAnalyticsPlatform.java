// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import android.util.Log;
import com.flurry.android.FlurryAgent;
import com.snapchat.android.util.ScExecutors;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform

public class FlurryAnalyticsPlatform
    implements AnalyticsPlatform
{

    public FlurryAnalyticsPlatform()
    {
    }

    protected Map a(Map map)
    {
        if (map.size() > 10)
        {
            Log.w("FlurryAnalyticsPlatform", (new StringBuilder()).append("Flurry only supports up to 10 parameters. Found: ").append(map.size()).append(". Truncating!").toString());
            HashMap hashmap1 = new HashMap(10);
            Iterator iterator1 = map.entrySet().iterator();
            do
            {
                java.util.Map.Entry entry1;
label0:
                {
                    if (iterator1.hasNext())
                    {
                        entry1 = (java.util.Map.Entry)iterator1.next();
                        if (hashmap1.size() < 10)
                        {
                            break label0;
                        }
                    }
                    return hashmap1;
                }
                hashmap1.put(entry1.getKey(), entry1.getValue().toString());
            } while (true);
        } else
        {
            HashMap hashmap = new HashMap(map.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put(entry.getKey(), entry.getValue().toString()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            return hashmap;
        }
    }

    public void a(Activity activity)
    {
        ScExecutors.e.submit(new Runnable(activity) {

            final Activity a;
            final FlurryAnalyticsPlatform b;

            public void run()
            {
                FlurryAgent.setUseHttps(true);
                FlurryAgent.setReportLocation(false);
                FlurryAgent.onStartSession(a, "FRW84M2GG56RMM8VWT5G");
            }

            
            {
                b = FlurryAnalyticsPlatform.this;
                a = activity;
                super();
            }
        });
    }

    public void a(String s, Map map, Map map1, Map map2)
    {
        if (map == null)
        {
            FlurryAgent.logEvent(s);
            return;
        } else
        {
            FlurryAgent.logEvent(s, a(map));
            return;
        }
    }

    public void b(Activity activity)
    {
        ScExecutors.e.submit(new Runnable(activity) {

            final Activity a;
            final FlurryAnalyticsPlatform b;

            public void run()
            {
                FlurryAgent.onEndSession(a);
            }

            
            {
                b = FlurryAnalyticsPlatform.this;
                a = activity;
                super();
            }
        });
    }
}
