// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Looper;

// Referenced classes of package com.google.android.gms.common.api:
//            Status, Result

public class e extends BaseImplementation.AbstractPendingResult
{

    public e(Looper looper)
    {
        super(looper);
    }

    protected Result b(Status status)
    {
        return e(status);
    }

    protected Status e(Status status)
    {
        return status;
    }
}
