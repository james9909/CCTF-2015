// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.User;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.debug.DevUtils;

// Referenced classes of package com.snapchat.android.operation:
//            HyperRequestOperation

public abstract class BasicScRequestOperation extends HyperRequestOperation
{

    protected User a;

    public BasicScRequestOperation(Intent intent)
    {
        super(intent);
        a = User.c();
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.j() == 401)
        {
            AnalyticsEvents.a(com.snapchat.android.analytics.AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
            SnapchatServiceManager.a().d();
        }
    }

    public abstract String e();

    public String h()
    {
        return DevUtils.b("dummy");
    }

    public String m_()
    {
        return (new StringBuilder()).append(h()).append(e()).toString();
    }
}
