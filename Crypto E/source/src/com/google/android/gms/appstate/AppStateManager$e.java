// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager

static abstract class <init> extends <init>
{

    public Result b(Status status)
    {
        return j(status);
    }

    public ateResult j(Status status)
    {
        return AppStateManager.g(status);
    }

    public ateResult(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }
}
