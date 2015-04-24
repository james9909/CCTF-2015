// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.framework;

import android.os.Build;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.analytics.framework:
//            EasyMetric

public class ErrorMetric extends EasyMetric
{

    private final String e = "ErrorMetric";

    public ErrorMetric(String s)
    {
        super((new StringBuilder()).append("ERROR: ").append(s).toString());
        a("DEVICE", Build.DEVICE);
        a("SDK_INT", String.valueOf(android.os.Build.VERSION.SDK_INT));
    }

    public ErrorMetric a(Throwable throwable)
    {
        a("error_message", throwable.getMessage());
        return this;
    }

    public void a(boolean flag)
    {
        super.a(flag);
        Timber.e("ErrorMetric", (new StringBuilder()).append("Reporting Error: ").append(a).toString(), new Object[0]);
    }
}
