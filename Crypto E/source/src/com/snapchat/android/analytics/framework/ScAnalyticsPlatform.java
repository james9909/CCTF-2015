// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.snapchat.android.Timber;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.network.HttpHeaderUtils;
import com.snapchat.eventengine.ScAnalyticsEventEngine;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform

public class ScAnalyticsPlatform
    implements AnalyticsPlatform
{

    private final ScAnalyticsEventEngine a;
    private final Provider b;
    private boolean c;

    public ScAnalyticsPlatform(ScAnalyticsEventEngine scanalyticseventengine)
    {
        this(scanalyticseventengine, User.UNSAFE_USER_PROVIDER);
    }

    ScAnalyticsPlatform(ScAnalyticsEventEngine scanalyticseventengine, Provider provider)
    {
        a = scanalyticseventengine;
        b = provider;
        c = false;
    }

    public void a(Activity activity)
    {
        User user = (User)b.get();
        if (user == null)
        {
            Timber.e("ScAnalyticsPlatform", "User instance was null during initialization - aborting.", new Object[0]);
            return;
        }
        String s = HttpHeaderUtils.a();
        String s1 = UserPrefs.k();
        int i = user.t();
        if (!UserPrefs.l())
        {
            s1 = "null";
            i = -1;
        }
        HashMap hashmap = new HashMap();
        hashmap.put("user_agent", s);
        hashmap.put("user_id", s1);
        hashmap.put("friend_count", Integer.valueOf(i));
        a.a(activity, hashmap);
        c = true;
    }

    public void a(String s, Map map)
    {
        if (!c)
        {
            Timber.e("ScAnalyticsPlatform", "Attempting to log without being initialized - aborting.", new Object[0]);
            return;
        } else
        {
            a.a(s, map);
            return;
        }
    }

    public void a(String s, Map map, Map map1, Map map2)
    {
        if (!c)
        {
            Timber.e("ScAnalyticsPlatform", "Attempting to log without being initialized - aborting.", new Object[0]);
            return;
        }
        HashMap hashmap = new HashMap();
        if (map != null)
        {
            hashmap.putAll(map);
        }
        if (map1 != null)
        {
            hashmap.putAll(map1);
        }
        a(s, ((Map) (hashmap)));
    }

    public void b(Activity activity)
    {
    }
}
