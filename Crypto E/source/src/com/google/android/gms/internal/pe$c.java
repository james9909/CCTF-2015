// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.panorama.Panorama;

// Referenced classes of package com.google.android.gms.internal:
//            pf, pd, pe

static abstract class .c extends com.google.android.gms.common.api.mplementation.a
{

    protected abstract void a(Context context, pd pd1);

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((pf));
    }

    protected final void a(pf pf1)
    {
        a(pf1.getContext(), (pd)pf1.jG());
    }

    protected gleApiClient(GoogleApiClient googleapiclient)
    {
        super(Panorama.Fd, googleapiclient);
    }
}
