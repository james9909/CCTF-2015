// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.s;
import java.util.Date;

// Referenced classes of package com.google.android.gms.ads:
//            AdRequest

public static final class D_EMULATOR
{

    private final com.google.android.gms.internal.LATOR lh = new com.google.android.gms.internal.LATOR();

    static com.google.android.gms.internal.LATOR a(D_EMULATOR d_emulator)
    {
        return d_emulator.lh;
    }

    public lh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        lh.LATOR(class1, bundle);
        return this;
    }

    public lh addKeyword(String s1)
    {
        lh.LATOR(s1);
        return this;
    }

    public xtras addNetworkExtras(NetworkExtras networkextras)
    {
        lh.(networkextras);
        return this;
    }

    public xtras addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        lh.(class1, bundle);
        if (class1.equals(com/google/ads/mediation/admob/AdMobAdapter) && bundle.getBoolean("_emulatorLiveAds"))
        {
            lh.(AdRequest.DEVICE_ID_EMULATOR);
        }
        return this;
    }

    public D_EMULATOR addTestDevice(String s1)
    {
        lh.LATOR(s1);
        return this;
    }

    public AdRequest build()
    {
        return new AdRequest(this, null);
    }

    public lh setBirthday(Date date)
    {
        lh.LATOR(date);
        return this;
    }

    public lh setContentUrl(String s1)
    {
        s.b(s1, "Content URL must be non-null.");
        s.b(s1, "Content URL must be non-empty.");
        boolean flag;
        Object aobj[];
        if (s1.length() <= 512)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(512);
        aobj[1] = Integer.valueOf(s1.length());
        s.b(flag, "Content URL must not exceed %d in length.  Provided length was %d.", aobj);
        lh.LATOR(s1);
        return this;
    }

    public lh setGender(int i)
    {
        lh.LATOR(i);
        return this;
    }

    public lh setLocation(Location location)
    {
        lh.LATOR(location);
        return this;
    }

    public lh tagForChildDirectedTreatment(boolean flag)
    {
        lh.LATOR(flag);
        return this;
    }

    public xtras()
    {
        lh.(AdRequest.DEVICE_ID_EMULATOR);
    }
}
