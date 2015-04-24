// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            il, hu, iq, ij, 
//            ir, in, ip

public final class is
    implements AppIndexApi, il
{
    static final class a
        implements com.google.android.gms.appindexing.AppIndexApi.ActionResult
    {

        private is EQ;
        private PendingResult ER;
        private Action ES;
        private String ET;

        public PendingResult end(GoogleApiClient googleapiclient)
        {
            String s = ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName();
            long l = System.currentTimeMillis();
            ij ij1 = ir.a(ES, ET, l, s, 3);
            return EQ.a(googleapiclient, new ij[] {
                ij1
            });
        }

        public PendingResult getPendingResult()
        {
            return ER;
        }

        a(is is1, PendingResult pendingresult, Action action1, String s)
        {
            EQ = is1;
            ER = pendingresult;
            ES = action1;
            ET = s;
        }
    }

    static abstract class b extends com.google.android.gms.common.api.BaseImplementation.a
    {

        protected volatile void a(com.google.android.gms.common.api.Api.a a1)
        {
            a((iq)a1);
        }

        protected abstract void a(in in);

        protected final void a(iq iq1)
        {
            a(iq1.fQ());
        }

        public b(GoogleApiClient googleapiclient)
        {
            super(hu.DJ, googleapiclient);
        }
    }

    static abstract class c extends b
    {

        protected Result b(Status status)
        {
            return e(status);
        }

        protected Status e(Status status)
        {
            return status;
        }

        c(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static final class d extends ip
    {

        public void d(Status status)
        {
            EM.e(status);
        }

        public d(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }


    public is()
    {
    }

    public static Intent a(String s, Uri uri)
    {
        b(s, uri);
        List list = uri.getPathSegments();
        String s1 = (String)list.get(0);
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme(s1);
        if (list.size() > 1)
        {
            builder.authority((String)list.get(1));
            for (int i = 2; i < list.size(); i++)
            {
                builder.appendPath((String)list.get(i));
            }

        }
        builder.encodedQuery(uri.getEncodedQuery());
        builder.encodedFragment(uri.getEncodedFragment());
        return new Intent("android.intent.action.VIEW", builder.build());
    }

    private static void b(String s, Uri uri)
    {
        if (!"android-app".equals(uri.getScheme()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("AppIndex: The URI scheme must be 'android-app' and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: ").append(uri).toString());
        }
        String s1 = uri.getHost();
        if (s != null && !s.equals(s1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("AppIndex: The URI host must match the package name and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: ").append(uri).toString());
        }
        List list = uri.getPathSegments();
        if (list.isEmpty() || ((String)list.get(0)).isEmpty())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/[host_path]). Provided URI: ").append(uri).toString());
        } else
        {
            return;
        }
    }

    public static void c(List list)
    {
        if (list != null)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                b(null, ((com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink)iterator.next()).appIndexingUrl);
            }
        }
    }

    public transient PendingResult a(GoogleApiClient googleapiclient, ij aij[])
    {
        return googleapiclient.a(new c(googleapiclient, ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName(), aij) {

            final String EN;
            final ij EO[];
            final is EP;

            protected void a(in in1)
            {
                in1.a(new d(this), EN, EO);
            }

            
            {
                EP = is.this;
                EN = s;
                EO = aij;
                super(googleapiclient);
            }
        });
    }

    public com.google.android.gms.appindexing.AppIndexApi.ActionResult action(GoogleApiClient googleapiclient, Action action1)
    {
        String s = ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName();
        long l = System.currentTimeMillis();
        String s1 = String.valueOf(l);
        ij aij[] = new ij[1];
        aij[0] = ir.a(action1, s1, l, s, 0);
        return new a(this, a(googleapiclient, aij), action1, s1);
    }

    public PendingResult view(GoogleApiClient googleapiclient, Activity activity, Intent intent, String s, Uri uri, List list)
    {
        String s1 = ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName();
        c(list);
        ij aij[] = new ij[1];
        aij[0] = new ij(s1, intent, s, uri, null, list);
        return a(googleapiclient, aij);
    }

    public PendingResult view(GoogleApiClient googleapiclient, Activity activity, Uri uri, String s, Uri uri1, List list)
    {
        String s1 = ((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName();
        b(s1, uri);
        return view(googleapiclient, activity, a(s1, uri), s, uri1, list);
    }

    public PendingResult viewEnd(GoogleApiClient googleapiclient, Activity activity, Intent intent)
    {
        return a(googleapiclient, new ij[] {
            new ij(ij.a(((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName(), intent), System.currentTimeMillis(), 3)
        });
    }

    public PendingResult viewEnd(GoogleApiClient googleapiclient, Activity activity, Uri uri)
    {
        return viewEnd(googleapiclient, activity, a(((iq)googleapiclient.a(hu.DJ)).getContext().getPackageName(), uri));
    }
}
