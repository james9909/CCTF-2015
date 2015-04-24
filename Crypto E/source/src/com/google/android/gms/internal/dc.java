// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            dj, dh, hf, de

public final class dc extends dd.a
{

    private Map rt;

    public dc()
    {
    }

    private de B(String s)
    {
        try
        {
            Class class1 = Class.forName(s, false, com/google/android/gms/internal/dc.getClassLoader());
            if (com/google/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                MediationAdapter mediationadapter = (MediationAdapter)class1.newInstance();
                return new dj(mediationadapter, (NetworkExtras)rt.get(mediationadapter.b()));
            }
            if (com/google/android/gms/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                return new dh((com.google.android.gms.ads.mediation.MediationAdapter)class1.newInstance());
            } else
            {
                hf.X((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            }
        }
        catch (Throwable throwable)
        {
            hf.X((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(". ").append(throwable.getMessage()).toString());
        }
        throw new RemoteException();
    }

    public boolean A(String s)
    {
        boolean flag;
        try
        {
            flag = com/google/android/gms/ads/mediation/customevent/CustomEvent.isAssignableFrom(Class.forName(s, false, com/google/android/gms/internal/dc.getClassLoader()));
        }
        catch (Throwable throwable)
        {
            hf.X((new StringBuilder()).append("Could not load custom event implementation class: ").append(s).append(", assuming old implementation.").toString());
            return false;
        }
        return flag;
    }

    public void d(Map map)
    {
        rt = map;
    }

    public de z(String s)
    {
        return B(s);
    }
}
