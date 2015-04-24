// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.snapchat.android.Timber;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util:
//            DeviceUtils

public class DemographicsTrackingUtils
{

    private final Context a;
    private final DeviceUtils b;

    public DemographicsTrackingUtils(Context context)
    {
        this(context, DeviceUtils.a());
    }

    DemographicsTrackingUtils(Context context, DeviceUtils deviceutils)
    {
        a = context;
        b = deviceutils;
    }

    private String a()
    {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(a) != 0) goto _L2; else goto _L1
_L1:
        String s;
        boolean flag;
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(a);
        s = info.getId();
        flag = info.isLimitAdTrackingEnabled();
        if (flag)
        {
            s = "optout";
        }
        return s;
        Object obj;
        obj;
_L4:
        Object aobj[] = new Object[1];
        aobj[0] = ((Exception) (obj)).toString();
        Timber.e("DemographicsTrackingUtils", String.format("Google advertising id lookup failed, by error %s", aobj), new Object[0]);
        return null;
_L2:
        return android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id");
        obj;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Map a(String s)
    {
        ThreadUtils.b();
        String s1;
        String s2;
        if (b.a(a))
        {
            s1 = "TAB";
        } else
        {
            s1 = "PHN";
        }
        s2 = a();
        if (s2 == null)
        {
            Timber.b("DemographicsTrackingUtils", "Device id was null, not sending request to third party demographics tracking service.", new Object[0]);
            return null;
        } else
        {
            HashMap hashmap = new HashMap();
            hashmap.put("c8", (new StringBuilder()).append("devgrp,").append(s1).toString());
            hashmap.put("c9", (new StringBuilder()).append("devid,").append(s2).toString());
            hashmap.put("c10", (new StringBuilder()).append("plt,").append("MBL").toString());
            hashmap.put("c13", (new StringBuilder()).append("asid,").append(s).toString());
            return hashmap;
        }
    }
}
