// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            he

public final class bg
{
    public static final class a
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

        static Date a(a a1)
        {
            return a1.d;
        }

        static String b(a a1)
        {
            return a1.oF;
        }

        static int c(a a1)
        {
            return a1.oG;
        }

        static HashSet d(a a1)
        {
            return a1.oO;
        }

        static Location e(a a1)
        {
            return a1.h;
        }

        static boolean f(a a1)
        {
            return a1.oH;
        }

        static Bundle g(a a1)
        {
            return a1.oI;
        }

        static HashMap h(a a1)
        {
            return a1.oP;
        }

        static String i(a a1)
        {
            return a1.oK;
        }

        static int j(a a1)
        {
            return a1.oM;
        }

        static HashSet k(a a1)
        {
            return a1.oQ;
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

        public a()
        {
            oG = -1;
            oH = false;
            oM = -1;
        }
    }


    public static final String DEVICE_ID_EMULATOR = he.S("emulator");
    private final Date d;
    private final Set f;
    private final Location h;
    private final String oF;
    private final int oG;
    private final boolean oH;
    private final Bundle oI;
    private final Map oJ;
    private final String oK;
    private final SearchAdRequest oL;
    private final int oM;
    private final Set oN;

    public bg(a a1)
    {
        this(a1, null);
    }

    public bg(a a1, SearchAdRequest searchadrequest)
    {
        d = a.a(a1);
        oF = a.b(a1);
        oG = a.c(a1);
        f = Collections.unmodifiableSet(a.d(a1));
        h = a.e(a1);
        oH = a.f(a1);
        oI = a.g(a1);
        oJ = Collections.unmodifiableMap(a.h(a1));
        oK = a.i(a1);
        oL = searchadrequest;
        oM = a.j(a1);
        oN = Collections.unmodifiableSet(a.k(a1));
    }

    public SearchAdRequest bq()
    {
        return oL;
    }

    public Map br()
    {
        return oJ;
    }

    public Bundle bs()
    {
        return oI;
    }

    public int bt()
    {
        return oM;
    }

    public Date getBirthday()
    {
        return d;
    }

    public String getContentUrl()
    {
        return oF;
    }

    public Bundle getCustomEventExtrasBundle(Class class1)
    {
        Bundle bundle = oI.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null)
        {
            return bundle.getBundle(class1.getClass().getName());
        } else
        {
            return null;
        }
    }

    public int getGender()
    {
        return oG;
    }

    public Set getKeywords()
    {
        return f;
    }

    public Location getLocation()
    {
        return h;
    }

    public boolean getManualImpressionsEnabled()
    {
        return oH;
    }

    public NetworkExtras getNetworkExtras(Class class1)
    {
        return (NetworkExtras)oJ.get(class1);
    }

    public Bundle getNetworkExtrasBundle(Class class1)
    {
        return oI.getBundle(class1.getName());
    }

    public String getPublisherProvidedId()
    {
        return oK;
    }

    public boolean isTestDevice(Context context)
    {
        return oN.contains(he.u(context));
    }

}
