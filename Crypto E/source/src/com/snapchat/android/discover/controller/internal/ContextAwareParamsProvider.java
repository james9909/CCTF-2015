// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import javax.inject.Provider;

public class ContextAwareParamsProvider
    implements Provider
{

    private final DiscoverEndpointManager a;

    public ContextAwareParamsProvider()
    {
        this(DiscoverEndpointManager.a());
    }

    protected ContextAwareParamsProvider(DiscoverEndpointManager discoverendpointmanager)
    {
        a = discoverendpointmanager;
    }

    public Bundle a()
    {
        String s = a.e();
        String s1 = a.f();
        if (s == null || s1 == null)
        {
            Timber.d("ContextAwareParamsProvider", "Cannot retrieve params, resource params are null", new Object[0]);
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString(s, s1);
            return bundle;
        }
    }

    public Object get()
    {
        return a();
    }
}
