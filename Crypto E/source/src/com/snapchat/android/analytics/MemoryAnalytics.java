// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.DeviceUtils;

public class MemoryAnalytics
{

    private final DeviceUtils mDeviceUtils;

    public MemoryAnalytics()
    {
        this(DeviceUtils.a());
    }

    MemoryAnalytics(DeviceUtils deviceutils)
    {
        mDeviceUtils = deviceutils;
    }

    public void a(String s, Throwable throwable)
    {
        (new ErrorMetric("OUT_OF_MEMORY")).a(throwable).a("method", s).a("memory_class", Integer.valueOf(mDeviceUtils.b(SnapchatApplication.e()))).c();
    }

    public void a(Throwable throwable)
    {
        (new ErrorMetric("OUT_OF_MEMORY")).a(throwable).a("memory_class", Integer.valueOf(mDeviceUtils.b(SnapchatApplication.e()))).c();
    }
}
