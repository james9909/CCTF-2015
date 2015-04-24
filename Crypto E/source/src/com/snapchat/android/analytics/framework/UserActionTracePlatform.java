// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.app.Activity;
import com.snapchat.android.util.debug.DebugCapturer;
import java.util.Map;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            AnalyticsPlatform

public class UserActionTracePlatform
    implements AnalyticsPlatform
{

    public UserActionTracePlatform()
    {
    }

    public void a(Activity activity)
    {
    }

    public void a(String s, Map map, Map map1, Map map2)
    {
        DebugCapturer.a(s);
    }

    public void b(Activity activity)
    {
    }
}
