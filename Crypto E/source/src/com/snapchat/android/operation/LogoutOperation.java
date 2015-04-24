// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Intent;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android.operation:
//            UpdateSnapsOperation

public class LogoutOperation extends UpdateSnapsOperation
{

    public LogoutOperation(Intent intent)
    {
        super(intent);
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        Timber.c("LogoutOperation", (new StringBuilder()).append("onResult - wasSuccessful ").append(networkresult.h()).toString(), new Object[0]);
        a.F();
    }

    protected String e()
    {
        return "/ph/logout";
    }
}
