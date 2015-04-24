// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            go

static final class wV
{

    private long wU;
    private long wV;

    public long di()
    {
        return wV;
    }

    public void dj()
    {
        wV = SystemClock.elapsedRealtime();
    }

    public void dk()
    {
        wU = SystemClock.elapsedRealtime();
    }

    public Bundle toBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", wU);
        bundle.putLong("tclose", wV);
        return bundle;
    }

    public ()
    {
        wU = -1L;
        wV = -1L;
    }
}
