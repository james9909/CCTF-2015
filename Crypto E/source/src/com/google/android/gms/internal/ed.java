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
//            hf, dw, ef, ee

public final class ed extends g
{
    static final class a extends Exception
    {

        public a(String s)
        {
            super(s);
        }
    }


    private static final ed tl = new ed();

    private ed()
    {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public static ee b(Activity activity)
    {
        ee ee;
        try
        {
            if (c(activity))
            {
                hf.T("Using AdOverlay from the client jar.");
                return new dw(activity);
            }
            ee = tl.d(activity);
        }
        catch (a a1)
        {
            hf.X(a1.getMessage());
            return null;
        }
        return ee;
    }

    private static boolean c(Activity activity)
    {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar"))
        {
            throw new a("Ad overlay requires the useClientJar flag in intent extras.");
        } else
        {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
    }

    private ee d(Activity activity)
    {
        ee ee;
        try
        {
            com.google.android.gms.dynamic.d d1 = e.n(activity);
            ee = com.google.android.gms.internal.ee.a.r(((ef)K(activity)).b(d1));
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not create remote AdOverlay.", remoteexception);
            return null;
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            hf.d("Could not create remote AdOverlay.", a1);
            return null;
        }
        return ee;
    }

    protected Object d(IBinder ibinder)
    {
        return q(ibinder);
    }

    protected ef q(IBinder ibinder)
    {
        return ef.a.s(ibinder);
    }

}
