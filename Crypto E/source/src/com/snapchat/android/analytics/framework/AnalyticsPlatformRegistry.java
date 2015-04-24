// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform, UpdateSnapsAnalyticsPlatform, FlurryAnalyticsPlatform, PostEventsAnalyticsPlatform, 
//            UserActionTracePlatform, ScAnalyticsPlatform

public class AnalyticsPlatformRegistry
{

    private List a;

    AnalyticsPlatformRegistry(UpdateSnapsAnalyticsPlatform updatesnapsanalyticsplatform, FlurryAnalyticsPlatform flurryanalyticsplatform, PostEventsAnalyticsPlatform posteventsanalyticsplatform, UserActionTracePlatform useractiontraceplatform, ScAnalyticsPlatform scanalyticsplatform)
    {
        a = new ArrayList();
        a.add(updatesnapsanalyticsplatform);
        a.add(flurryanalyticsplatform);
        a.add(posteventsanalyticsplatform);
        a.add(useractiontraceplatform);
        a.add(scanalyticsplatform);
    }

    public void a(Activity activity)
    {
        if (UserPrefs.w())
        {
            Timber.b("AnalyticsPlatformRegistry", "User is logged into SnapKidz. Aborting.", new Object[0]);
        } else
        {
            Iterator iterator = a.iterator();
            while (iterator.hasNext()) 
            {
                ((AnalyticsPlatform)iterator.next()).a(activity);
            }
        }
    }

    public void b(Activity activity)
    {
        if (UserPrefs.w())
        {
            Timber.b("AnalyticsPlatformRegistry", "User is logged into SnapKidz. Aborting.", new Object[0]);
        } else
        {
            Iterator iterator = a.iterator();
            while (iterator.hasNext()) 
            {
                ((AnalyticsPlatform)iterator.next()).b(activity);
            }
        }
    }
}
