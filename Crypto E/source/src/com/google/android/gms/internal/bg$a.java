// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            bg

public static final class oM
{

    private Date d;
    private Location h;
    private String oF;
    private int oG;
    private boolean oH;
    private final Bundle oI = new Bundle();
    private String oK;
    private int oM;
    private final HashSet oO = new HashSet();
    private final HashMap oP = new HashMap();
    private final HashSet oQ = new HashSet();

    static Date a(oM om)
    {
        return om.d;
    }

    static String b(d d1)
    {
        return d1.oF;
    }

    static int c(oF of)
    {
        return of.oG;
    }

    static HashSet d(oG og)
    {
        return og.oO;
    }

    static Location e(oO oo)
    {
        return oo.h;
    }

    static boolean f(h h1)
    {
        return h1.oH;
    }

    static Bundle g(oH oh)
    {
        return oh.oI;
    }

    static HashMap h(oI oi)
    {
        return oi.oP;
    }

    static String i(oP op)
    {
        return op.oK;
    }

    static int j(oK ok)
    {
        return ok.oM;
    }

    static HashSet k(oM om)
    {
        return om.oQ;
    }

    public void a(Location location)
    {
        h = location;
    }

    public void a(NetworkExtras networkextras)
    {
        if (networkextras instanceof AdMobExtras)
        {
            a(com/google/ads/mediation/admob/AdMobAdapter, ((AdMobExtras)networkextras).getExtras());
            return;
        } else
        {
            oP.put(networkextras.getClass(), networkextras);
            return;
        }
    }

    public void a(Class class1, Bundle bundle)
    {
        oI.putBundle(class1.getName(), bundle);
    }

    public void a(Date date)
    {
        d = date;
    }

    public void b(Class class1, Bundle bundle)
    {
        if (oI.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null)
        {
            oI.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        oI.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(class1.getName(), bundle);
    }

    public void h(int l)
    {
        oG = l;
    }

    public void i(boolean flag)
    {
        oH = flag;
    }

    public void j(boolean flag)
    {
        int l;
        if (flag)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        oM = l;
    }

    public void r(String s1)
    {
        oO.add(s1);
    }

    public void s(String s1)
    {
        oQ.add(s1);
    }

    public void t(String s1)
    {
        oQ.remove(s1);
    }

    public void u(String s1)
    {
        oF = s1;
    }

    public void v(String s1)
    {
        oK = s1;
    }

    public NetworkExtras()
    {
        oG = -1;
        oH = false;
        oM = -1;
    }
}
