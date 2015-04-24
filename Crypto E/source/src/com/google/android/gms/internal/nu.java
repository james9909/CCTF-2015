// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionApi;

// Referenced classes of package com.google.android.gms.internal:
//            od

public class nu
    implements ActivityRecognitionApi
{
    static abstract class a extends com.google.android.gms.location.ActivityRecognition.a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        public a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public nu()
    {
    }

    public PendingResult removeActivityUpdates(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, pendingintent) {

            final PendingIntent anQ;
            final nu anR;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.a(anQ);
                b(Status.RQ);
            }

            
            {
                anR = nu.this;
                anQ = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult requestActivityUpdates(GoogleApiClient googleapiclient, long l, PendingIntent pendingintent)
    {
        return googleapiclient.b(new a(googleapiclient, l, pendingintent) {

            final long anP;
            final PendingIntent anQ;
            final nu anR;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((od)a1);
            }

            protected void a(od od1)
            {
                od1.a(anP, anQ);
                b(Status.RQ);
            }

            
            {
                anR = nu.this;
                anP = l;
                anQ = pendingintent;
                super(googleapiclient);
            }
        });
    }
}
