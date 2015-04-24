// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            nz, od

class aog
    implements com.google.android.gms.location.aog
{

    final nStatusCodes.fJ aog;

    public void a(int i, PendingIntent pendingintent)
    {
        Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
    }

    public void b(int i, String as[])
    {
        aog.aog(LocationStatusCodes.fJ(i));
    }

    eApiClient(eApiClient eapiclient)
    {
        aog = eapiclient;
        super();
    }

    // Unreferenced inner class com/google/android/gms/internal/nz$3

/* anonymous class */
    class nz._cls3 extends nz.a
    {

        final nz aoc;
        final List aof;

        protected volatile void a(com.google.android.gms.common.api.Api.a a1)
        {
            a((od)a1);
        }

        protected void a(od od1)
        {
            nz._cls3._cls1 _lcls1 = new nz._cls3._cls1(this);
            od1.a(aof, _lcls1);
        }

            
            {
                aoc = nz1;
                aof = list;
                super(googleapiclient);
            }
    }

}
