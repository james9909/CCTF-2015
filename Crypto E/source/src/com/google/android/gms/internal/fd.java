// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;

// Referenced classes of package com.google.android.gms.internal:
//            hf, eo, ez, ey

public final class fd extends g
{
    static final class a extends Exception
    {

        public a(String s)
        {
            super(s);
        }
    }


    private static final fd tW = new fd();

    private fd()
    {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    private static boolean c(Activity activity)
    {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar"))
        {
            throw new a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
        } else
        {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
        }
    }

    public static ey e(Activity activity)
    {
        ey ey;
        try
        {
            if (c(activity))
            {
                hf.T("Using AdOverlay from the client jar.");
                return new eo(activity);
            }
            ey = tW.f(activity);
        }
        catch (a a1)
        {
            hf.X(a1.getMessage());
            return null;
        }
        return ey;
    }

    private ey f(Activity activity)
    {
        ey ey;
        try
        {
            com.google.android.gms.dynamic.d d1 = com.google.android.gms.dynamic.e.n(activity);
            ey = com.google.android.gms.internal.ey.a.w(((ez)K(activity)).c(d1));
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not create remote InAppPurchaseManager.", remoteexception);
            return null;
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            hf.d("Could not create remote InAppPurchaseManager.", a1);
            return null;
        }
        return ey;
    }

    protected ez A(IBinder ibinder)
    {
        return ez.a.x(ibinder);
    }

    protected Object d(IBinder ibinder)
    {
        return A(ibinder);
    }

}
