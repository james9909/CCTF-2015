// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import com.crittercism.app.Crittercism;
import net.hockeyapp.android.ExceptionHandler;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager, CrashSampler, SnapchatCrashManager

public class ExceptionReporter
{

    private final ReleaseManager a;
    private final CrashSampler b;

    public ExceptionReporter()
    {
        this(ReleaseManager.a(), CrashSampler.a());
    }

    protected ExceptionReporter(ReleaseManager releasemanager, CrashSampler crashsampler)
    {
        a = releasemanager;
        b = crashsampler;
    }

    public void a(Throwable throwable)
    {
        if (b.b())
        {
            d(throwable);
        }
    }

    public void b(Throwable throwable)
    {
        if (a.b())
        {
            throw new RuntimeException(throwable);
        }
        if (b.b())
        {
            c(throwable);
        }
    }

    protected void c(Throwable throwable)
    {
        ExceptionHandler.a(throwable, new SnapchatCrashManager());
        Crittercism.a(throwable);
    }

    protected void d(Throwable throwable)
    {
        Crittercism.a(throwable);
    }
}
