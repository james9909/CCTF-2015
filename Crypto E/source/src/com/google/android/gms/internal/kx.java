// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            kw, ku, kz, lb

public final class kx
    implements kw
{
    static class a extends ku
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void bP(int i)
        {
            Fn.e(new Status(i));
        }

        public a(com.google.android.gms.common.api.BaseImplementation.b b)
        {
            Fn = b;
        }
    }


    public kx()
    {
    }

    public PendingResult g(GoogleApiClient googleapiclient)
    {
        return (new ky.a(googleapiclient) {

            final kx UK;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((kz)a1);
            }

            protected void a(kz kz1)
            {
                ((lb)kz1.jG()).a(new a(this));
            }

            
            {
                UK = kx.this;
                super(googleapiclient);
            }
        }).iU();
    }
}
