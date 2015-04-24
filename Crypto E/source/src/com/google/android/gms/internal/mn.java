// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.fitness.Fitness;

// Referenced classes of package com.google.android.gms.internal:
//            ms

public interface mn
    extends com.google.android.gms.common.api.Api.a
{
    public static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        public a(GoogleApiClient googleapiclient)
        {
            super(Fitness.Fd, googleapiclient);
        }
    }

    public static class b extends mw.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void l(Status status)
        {
            Fn.e(status);
        }

        public b(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = b1;
        }
    }

    public static abstract class c extends a
    {

        protected Result b(Status status)
        {
            return e(status);
        }

        protected Status e(Status status)
        {
            boolean flag;
            if (!status.isSuccess())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            s.O(flag);
            return status;
        }

        c(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public abstract Context getContext();

    public abstract ms lV();
}
