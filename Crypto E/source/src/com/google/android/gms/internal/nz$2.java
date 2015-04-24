// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationStatusCodes;

// Referenced classes of package com.google.android.gms.internal:
//            nz, od

class gleApiClient extends gleApiClient
{

    final PendingIntent aob;
    final nz aoc;

    protected volatile void a(com.google.android.gms.common.api. )
    {
        a((od));
    }

    protected void a(od od1)
    {
        com.google.android.gms.location.a a1 = new com.google.android.gms.location.b.b() {

            final nz._cls2 aoe;

            public void a(int i, PendingIntent pendingintent)
            {
                aoe.b(LocationStatusCodes.fJ(i));
            }

            public void b(int i, String as[])
            {
                Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
            }

            
            {
                aoe = nz._cls2.this;
                super();
            }
        };
        od1.a(aob, a1);
    }

    gleApiClient(nz nz1, GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        aoc = nz1;
        aob = pendingintent;
        super(googleapiclient);
    }
}
