// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            pg, pe

static final class Fn extends Fn
{

    private final com.google.android.gms.common.api.mplementation.b Fn;

    public void a(int i, Bundle bundle, int j, Intent intent)
    {
        PendingIntent pendingintent;
        Status status;
        if (bundle != null)
        {
            pendingintent = (PendingIntent)bundle.getParcelable("pendingIntent");
        } else
        {
            pendingintent = null;
        }
        status = new Status(i, null, pendingintent);
        Fn.e(new pg(status, intent));
    }

    public ementation.b(com.google.android.gms.common.api.mplementation.b b1)
    {
        Fn = b1;
    }
}
