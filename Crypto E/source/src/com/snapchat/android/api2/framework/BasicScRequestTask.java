// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.model.User;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.debug.DevUtils;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HyperRequestTask, NetworkResult

public abstract class BasicScRequestTask extends HyperRequestTask
{

    public final User mUser = User.c();

    public BasicScRequestTask()
    {
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

    public Object b()
    {
        return new AuthPayload();
    }

    public abstract String d();

    public String i()
    {
        return DevUtils.b("dummy");
    }

    public String m_()
    {
        return (new StringBuilder()).append(i()).append(d()).toString();
    }
}
