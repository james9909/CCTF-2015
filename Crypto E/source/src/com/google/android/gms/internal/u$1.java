// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;

// Referenced classes of package com.google.android.gms.internal:
//            u, gn, hk, dw

class lz
    implements ComponentCallbacks
{

    final u lz;

    public void onConfigurationChanged(Configuration configuration)
    {
        if (u.a(lz) != null && u.a(lz).lM != null)
        {
            hk hk1 = u.a(lz).lM.sR;
            if (hk1 != null)
            {
                hk1.ci();
                dw dw1 = hk1.dM();
                if (dw1 != null)
                {
                    dw1.cp();
                }
            }
        }
    }

    public void onLowMemory()
    {
    }

    (u u1)
    {
        lz = u1;
        super();
    }
}
