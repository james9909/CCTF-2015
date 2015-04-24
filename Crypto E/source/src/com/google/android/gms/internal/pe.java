// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.panorama.Panorama;
import com.google.android.gms.panorama.PanoramaApi;

// Referenced classes of package com.google.android.gms.internal:
//            pd, pc, pg, pf

public class pe
    implements PanoramaApi
{
    static abstract class a extends c
    {

        protected com.google.android.gms.panorama.PanoramaApi.PanoramaResult aI(Status status)
        {
            return new pg(status, null);
        }

        protected Result b(Status status)
        {
            return aI(status);
        }

        public a(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static final class b extends pc.a
    {

        private final com.google.android.gms.common.api.BaseImplementation.b Fn;

        public void a(int i, Bundle bundle, int j, Intent intent)
        {
            PendingIntent pendingintent;
            Status status;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            status = new Status(i, null, pendingintent);
            Fn.e(new pg(status, intent));
        }

        public b(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            Fn = b1;
        }
    }

    static abstract class c extends com.google.android.gms.common.api.BaseImplementation.a
    {

        protected abstract void a(Context context, pd pd1);

        protected volatile void a(com.google.android.gms.common.api.Api.a a1)
        {
            a((pf)a1);
        }

        protected final void a(pf pf1)
        {
            a(pf1.getContext(), (pd)pf1.jG());
        }

        protected c(GoogleApiClient googleapiclient)
        {
            super(Panorama.Fd, googleapiclient);
        }
    }


    public pe()
    {
    }

    private static void a(Context context, Uri uri)
    {
        context.revokeUriPermission(uri, 1);
    }

    private static void a(Context context, pd pd1, pc pc, Uri uri, Bundle bundle)
    {
        context.grantUriPermission("com.google.android.gms", uri, 1);
        pc.a a1 = new pc.a(context, uri, pc) {

            final Uri aub;
            final pc aud;
            final Context no;

            public void a(int i, Bundle bundle1, int j, Intent intent)
            {
                pe.b(no, aub);
                aud.a(i, bundle1, j, intent);
            }

            
            {
                no = context;
                aub = uri;
                aud = pc1;
                super();
            }
        };
        try
        {
            pd1.a(a1, uri, bundle, true);
            return;
        }
        catch (RemoteException remoteexception)
        {
            a(context, uri);
            throw remoteexception;
        }
        catch (RuntimeException runtimeexception)
        {
            a(context, uri);
            throw runtimeexception;
        }
    }

    static void b(Context context, Uri uri)
    {
        a(context, uri);
    }

    static void b(Context context, pd pd1, pc pc, Uri uri, Bundle bundle)
    {
        a(context, pd1, pc, uri, bundle);
    }

    public PendingResult loadPanoramaInfo(GoogleApiClient googleapiclient, Uri uri)
    {
        return googleapiclient.a(new a(googleapiclient, uri) {

            final Uri aub;
            final pe auc;

            protected void a(Context context, pd pd1)
            {
                pd1.a(new b(this), aub, null, false);
            }

            
            {
                auc = pe.this;
                aub = uri;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadPanoramaInfoAndGrantAccess(GoogleApiClient googleapiclient, Uri uri)
    {
        return googleapiclient.a(new a(googleapiclient, uri) {

            final Uri aub;
            final pe auc;

            protected void a(Context context, pd pd1)
            {
                pe.b(context, pd1, new b(this), aub, null);
            }

            
            {
                auc = pe.this;
                aub = uri;
                super(googleapiclient);
            }
        });
    }
}
