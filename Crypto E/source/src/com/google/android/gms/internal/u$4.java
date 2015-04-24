// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            u, es, gn, hk, 
//            dw

class lB
    implements Runnable
{

    final Intent lB;
    final u lz;

    public void run()
    {
        if (es.d(lB) == 0 && u.a(lz).lM != null && u.a(lz).lM.sR != null && u.a(lz).lM.sR.dM() != null)
        {
            u.a(lz).lM.sR.dM().close();
        }
        u.a(lz).ma = false;
    }

    (u u1, Intent intent)
    {
        lz = u1;
        lB = intent;
        super();
    }
}
