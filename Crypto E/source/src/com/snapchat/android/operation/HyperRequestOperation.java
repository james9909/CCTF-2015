// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Context;
import android.content.Intent;
import com.snapchat.android.api2.framework.HyperRequest;
import com.snapchat.android.api2.framework.HyperRequestDependencyProvider;
import com.snapchat.android.api2.framework.NetworkInterface;

// Referenced classes of package com.snapchat.android.operation:
//            Operation

public abstract class HyperRequestOperation extends HyperRequest
    implements Operation
{

    private final Intent a;
    protected NetworkInterface d;

    protected HyperRequestOperation(Intent intent)
    {
        a = intent;
        d = mProvider.a();
    }

    public Intent a()
    {
        return a;
    }

    public void a(Context context)
    {
        a(d.a(m_(), c(), j_(), f_(), b()));
    }

    public void b(Context context)
    {
    }
}
