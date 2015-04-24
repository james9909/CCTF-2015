// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import com.crittercism.app.Crittercism;
import net.hockeyapp.android.ExceptionHandler;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager, CrashSampler, SnapchatCrashManager

public class GracefulExceptionHandler
{

    private final CrashSampler a;
    private final ReleaseManager b;

    GracefulExceptionHandler(CrashSampler crashsampler, ReleaseManager releasemanager)
    {
        a = crashsampler;
        b = releasemanager;
    }

    public void a(Throwable throwable)
    {
        if (b.b())
        {
            if (throwable instanceof RuntimeException)
            {
                throw (RuntimeException)throwable;
            } else
            {
                throw new RuntimeException(throwable);
            }
        }
        if (a.b())
        {
            b(throwable);
        }
    }

    protected void b(Throwable throwable)
    {
        ExceptionHandler.a(throwable, new SnapchatCrashManager());
        Crittercism.a(throwable);
    }
}
