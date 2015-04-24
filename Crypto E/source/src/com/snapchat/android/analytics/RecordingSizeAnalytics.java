// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.handledexceptions.MismatchedAspectRatioScreenNarrowerThanRecording;
import com.snapchat.android.analytics.handledexceptions.MismatchedAspectRatioScreenWiderThanRecording;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.debug.ExceptionReporter;

public class RecordingSizeAnalytics
{

    private final ExceptionReporter mExceptionReporter;
    private final ScreenParameterProvider mScreenParameterProvider;

    public RecordingSizeAnalytics()
    {
        this(new ExceptionReporter(), ScreenParameterProvider.a());
    }

    protected RecordingSizeAnalytics(ExceptionReporter exceptionreporter, ScreenParameterProvider screenparameterprovider)
    {
        mExceptionReporter = exceptionreporter;
        mScreenParameterProvider = screenparameterprovider;
    }

    protected Resolution a(Resolution resolution, Resolution resolution1)
    {
        return resolution.a((double)resolution1.a() / (double)resolution.a());
    }

    public void a(Resolution resolution)
    {
        Exception exception;
        if (ApiHelper.a)
        {
            if ((exception = b(resolution)) != null)
            {
                mExceptionReporter.a(exception);
                return;
            }
        }
    }

    protected Exception b(Resolution resolution)
    {
        double d = resolution.c() - mScreenParameterProvider.b().c();
        double d1 = c(resolution);
        if (d > 0.0D)
        {
            return new MismatchedAspectRatioScreenWiderThanRecording(d1);
        }
        if (d < 0.0D)
        {
            return new MismatchedAspectRatioScreenNarrowerThanRecording(d1);
        } else
        {
            return null;
        }
    }

    protected double c(Resolution resolution)
    {
        Resolution resolution1 = a(mScreenParameterProvider.b(), resolution);
        return 100D * (double)(Math.abs(resolution1.d() - resolution.d()) / Math.max(resolution1.d(), resolution.d()));
    }
}
