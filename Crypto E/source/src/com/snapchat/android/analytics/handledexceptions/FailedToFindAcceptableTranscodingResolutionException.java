// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.handledexceptions;

import android.os.Build;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.util.Resolution;

public class FailedToFindAcceptableTranscodingResolutionException extends Exception
{

    public FailedToFindAcceptableTranscodingResolutionException(Resolution resolution)
    {
        super((new StringBuilder()).append(TranscodingPreferencesWrapper.a().b().name()).append(",").append(resolution.b()).append("x").append(resolution.a()).append(",").append(Build.MODEL).append(",").append(android.os.Build.VERSION.SDK_INT).toString());
    }
}
