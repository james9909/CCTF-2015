// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.SessionsApi;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.request.aa;
import com.google.android.gms.fitness.request.u;
import com.google.android.gms.fitness.result.SessionReadResult;
import com.google.android.gms.fitness.result.SessionStopResult;

// Referenced classes of package com.google.android.gms.internal:
//            mn, ms

public class ng
    implements SessionsApi
{
    static class a extends mu.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(SessionReadResult sessionreadresult)
        {
            Fn.e(sessionreadresult);
        }

        private a(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = b1;
        }

    }

    static class b extends mv.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(SessionStopResult sessionstopresult)
        {
            Fn.e(sessionstopresult);
        }

        private b(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = b1;
        }

    }


    public ng()
    {
    }

    private PendingResult a(final GoogleApiClient final_googleapiclient, String s, String s1)
    {
        return final_googleapiclient.b(new mn.a(s, s1) {

            final ng acL;
            final String acM;
            final String val$name;

            protected SessionStopResult K(Status status)
            {
                return SessionStopResult.R(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                b b1 = new b(this);
                String s2 = mn1.getContext().getPackageName();
                mn1.lV().a((new com.google.android.gms.fitness.request.y.a()).bE(name).bF(acM).mu(), b1, s2);
            }

            protected Result b(Status status)
            {
                return K(status);
            }

            
            {
                acL = ng.this;
                name = s;
                acM = s1;
                super(final_googleapiclient);
            }
        });
    }

    public PendingResult insertSession(GoogleApiClient googleapiclient, SessionInsertRequest sessioninsertrequest)
    {
        return googleapiclient.a(new mn.c(googleapiclient, sessioninsertrequest) {

            final ng acL;
            final SessionInsertRequest acN;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acN, b1, s);
            }

            
            {
                acL = ng.this;
                acN = sessioninsertrequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult readSession(GoogleApiClient googleapiclient, SessionReadRequest sessionreadrequest)
    {
        return googleapiclient.a(new mn.a(googleapiclient, sessionreadrequest) {

            final ng acL;
            final SessionReadRequest acO;

            protected SessionReadResult L(Status status)
            {
                return SessionReadResult.Q(status);
            }

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                a a1 = new a(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(acO, a1, s);
            }

            protected Result b(Status status)
            {
                return L(status);
            }

            
            {
                acL = ng.this;
                acO = sessionreadrequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult registerForSessions(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return googleapiclient.b(new mn.c(googleapiclient, pendingintent) {

            final ng acL;
            final PendingIntent acP;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                u u1 = new u(acP);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(u1, b1, s);
            }

            
            {
                acL = ng.this;
                acP = pendingintent;
                super(googleapiclient);
            }
        });
    }

    public PendingResult startSession(GoogleApiClient googleapiclient, Session session)
    {
        return googleapiclient.b(new mn.c(googleapiclient, session) {

            final Session acK;
            final ng acL;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a((new com.google.android.gms.fitness.request.w.a()).b(acK).mt(), b1, s);
            }

            
            {
                acL = ng.this;
                acK = session;
                super(googleapiclient);
            }
        });
    }

    public PendingResult stopSession(GoogleApiClient googleapiclient, String s)
    {
        return a(googleapiclient, null, s);
    }

    public PendingResult unregisterForSessions(GoogleApiClient googleapiclient, PendingIntent pendingintent)
    {
        return googleapiclient.b(new mn.c(googleapiclient, pendingintent) {

            final ng acL;
            final PendingIntent acP;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((mn)a1);
            }

            protected void a(mn mn1)
            {
                mn.b b1 = new mn.b(this);
                aa aa1 = new aa(acP);
                String s = mn1.getContext().getPackageName();
                mn1.lV().a(aa1, b1, s);
            }

            
            {
                acL = ng.this;
                acP = pendingintent;
                super(googleapiclient);
            }
        });
    }
}
