// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.snapchat.android.util.debug.DevUtils;
import javax.inject.Provider;

public class DefaultEndpointProvider
    implements Provider
{

    public DefaultEndpointProvider()
    {
    }

    public String a()
    {
        return DevUtils.b("dummy");
    }

    public Object get()
    {
        return a();
    }
}
