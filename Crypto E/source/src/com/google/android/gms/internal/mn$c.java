// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.internal:
//            mn

public static abstract class gleApiClient extends gleApiClient
{

    protected Result b(Status status)
    {
        return e(status);
    }

    protected Status e(Status status)
    {
        boolean flag;
        if (!status.isSuccess())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.O(flag);
        return status;
    }

    gleApiClient(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }
}
