// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;

// Referenced classes of package com.google.android.gms.internal:
//            hf, u, hg, be, 
//            ay, dc, bd

public final class au extends g
{

    private static final au om = new au();

    private au()
    {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public static bd a(Context context, ay ay, String s, dc dc)
    {
        Object obj;
label0:
        {
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) == 0)
            {
                obj = om.b(context, ay, s, dc);
                if (obj != null)
                {
                    break label0;
                }
            }
            hf.T("Using AdManager from the client jar.");
            obj = new u(context, ay, s, dc, new hg(0x640578, 0x640578, true));
        }
        return ((bd) (obj));
    }

    private bd b(Context context, ay ay, String s, dc dc)
    {
        bd bd;
        try
        {
            com.google.android.gms.dynamic.d d1 = e.n(context);
            bd = com.google.android.gms.internal.bd.a.f(((be)K(context)).a(d1, ay, s, dc, 0x640578));
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not create remote AdManager.", remoteexception);
            return null;
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            hf.d("Could not create remote AdManager.", a1);
            return null;
        }
        return bd;
    }

    protected be c(IBinder ibinder)
    {
        return com.google.android.gms.internal.be.a.g(ibinder);
    }

    protected Object d(IBinder ibinder)
    {
        return c(ibinder);
    }

}
