// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import com.snapchat.android.api2.DemographicsTrackingRequestTask;
import com.snapchat.android.util.DemographicsTrackingUtils;

// Referenced classes of package com.snapchat.android.api:
//            SyncAllTask

static final class val.trackingUrl
    implements Runnable
{

    final Context val$context;
    final String val$trackingAppId;
    final String val$trackingUrl;

    public void run()
    {
        java.util.Map map = (new DemographicsTrackingUtils(val$context)).a(val$trackingAppId);
        if (map != null)
        {
            (new DemographicsTrackingRequestTask(val$trackingUrl, map)).k();
        }
    }

    rackingRequestTask(Context context1, String s, String s1)
    {
        val$context = context1;
        val$trackingAppId = s;
        val$trackingUrl = s1;
        super();
    }
}
