// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import android.net.wifi.WifiInfo;
import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.internal.BandwidthSampler;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.networkmanager:
//            NetworkStatusManager

public class BandwidthEstimator
{

    private static final BandwidthEstimator a = new BandwidthEstimator();
    private final NetworkStatusManager b;
    private final Object c;
    private final Map d;

    private BandwidthEstimator()
    {
        this(NetworkStatusManager.a());
    }

    protected BandwidthEstimator(NetworkStatusManager networkstatusmanager)
    {
        c = new Object();
        d = new HashMap();
        b = networkstatusmanager;
    }

    public static BandwidthEstimator a()
    {
        return a;
    }

    protected BandwidthSampler a(String s)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        BandwidthSampler bandwidthsampler = (BandwidthSampler)d.get(s);
        if (bandwidthsampler != null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        bandwidthsampler = new BandwidthSampler();
        d.put(s, bandwidthsampler);
        obj;
        JVM INSTR monitorexit ;
        return bandwidthsampler;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected String a(WifiInfo wifiinfo)
    {
        Object aobj[] = new Object[2];
        aobj[0] = wifiinfo.getSSID();
        aobj[1] = wifiinfo.getBSSID();
        return String.format("WIFI-%s-%s", aobj);
    }

    public void a(long l)
    {
        String s = c();
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l);
        aobj[1] = Long.valueOf(l / 1000L);
        Timber.c("BandwidthEstimator", "BANDWIDTH: Recording BW sample of %d bps (%d kbps) for current network", aobj);
        a(s).a(l);
    }

    public long b()
    {
        long l = a(c()).a();
        if (l != 0L)
        {
            return l;
        }
        return !b.f() ? 0x927c0L : 0x2dc6c0L;
    }

    protected String c()
    {
        WifiInfo wifiinfo = b.c();
        if (wifiinfo != null && wifiinfo.getSSID() != null && wifiinfo.getBSSID() != null)
        {
            return a(wifiinfo);
        }
        if (b.e())
        {
            return "WAN";
        } else
        {
            return "NO_NETWORK";
        }
    }

}
