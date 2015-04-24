// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.s;

class pg
    implements com.google.android.gms.panorama.PanoramaApi.PanoramaResult
{

    private final Status EI;
    private final Intent aue;

    public pg(Status status, Intent intent)
    {
        EI = (Status)s.l(status);
        aue = intent;
    }

    public Status getStatus()
    {
        return EI;
    }

    public Intent getViewerIntent()
    {
        return aue;
    }
}
