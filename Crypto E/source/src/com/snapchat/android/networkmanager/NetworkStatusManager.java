// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.snapchat.android.networkmanager:
//            NetworkStatusListener

public class NetworkStatusManager
{

    private static NetworkStatusManager a = new NetworkStatusManager();
    private final ConnectivityManager b;
    private final WifiManager c;
    private final Object d;
    private final Set e;
    private NetworkInfo f;

    private NetworkStatusManager()
    {
        this(((Context) (SnapchatApplication.e())));
    }

    private NetworkStatusManager(Context context)
    {
        ConnectivityManager connectivitymanager;
        WifiManager wifimanager;
        if (context != null)
        {
            connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        } else
        {
            connectivitymanager = null;
        }
        if (context != null)
        {
            wifimanager = (WifiManager)context.getSystemService("wifi");
        } else
        {
            wifimanager = null;
        }
        this(connectivitymanager, wifimanager);
    }

    protected NetworkStatusManager(ConnectivityManager connectivitymanager, WifiManager wifimanager)
    {
        d = new Object();
        e = new HashSet();
        b = connectivitymanager;
        c = wifimanager;
    }

    public static NetworkStatusManager a()
    {
        return a;
    }

    private static String b(NetworkInfo networkinfo)
    {
        if (networkinfo != null)
        {
            return networkinfo.toString();
        } else
        {
            return "None";
        }
    }

    public void a(NetworkInfo networkinfo)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        Object aobj[] = new Object[2];
        aobj[0] = b(f);
        aobj[1] = b(networkinfo);
        Timber.c("NetworkStatusManager", "Network status changed from %s to %s", aobj);
        f = networkinfo;
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((NetworkStatusListener)iterator.next()).a(f)) { }
        break MISSING_BLOCK_LABEL_94;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void a(NetworkStatusListener networkstatuslistener)
    {
        synchronized (d)
        {
            e.add(networkstatuslistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public NetworkInfo b()
    {
        NetworkInfo networkinfo;
        synchronized (d)
        {
            if (f == null)
            {
                f = b.getActiveNetworkInfo();
            }
            networkinfo = f;
        }
        return networkinfo;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(NetworkStatusListener networkstatuslistener)
    {
        synchronized (d)
        {
            e.remove(networkstatuslistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public WifiInfo c()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = f();
        WifiInfo wifiinfo;
        wifiinfo = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        wifiinfo = c.getConnectionInfo();
        obj;
        JVM INSTR monitorexit ;
        return wifiinfo;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d()
    {
        NetworkInfo networkinfo = b();
        return networkinfo != null && networkinfo.isConnected();
    }

    public boolean e()
    {
        NetworkInfo networkinfo = b();
        return networkinfo != null && networkinfo.isConnected() && networkinfo.getType() == 0;
    }

    public boolean f()
    {
        NetworkInfo networkinfo = b();
        return networkinfo != null && networkinfo.isConnected() && networkinfo.getType() == 1;
    }

    public String g()
    {
        NetworkInfo networkinfo;
        String s;
        networkinfo = b();
        s = "unknown";
        if (networkinfo == null || !networkinfo.isConnectedOrConnecting())
        {
            break MISSING_BLOCK_LABEL_42;
        }
        if (networkinfo.getType() != 1) goto _L2; else goto _L1
_L1:
        s = "wifi";
_L4:
        return s;
_L2:
        if (networkinfo.getType() != 0) goto _L4; else goto _L3
_L3:
        return "wwan";
        return "not_reachable";
    }

}
