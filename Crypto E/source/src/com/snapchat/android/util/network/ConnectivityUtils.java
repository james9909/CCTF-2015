// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.network;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.snapchat.android.SnapchatApplication;

public final class ConnectivityUtils
{

    private ConnectivityUtils()
    {
    }

    public static NetworkInfo a()
    {
        return ((ConnectivityManager)SnapchatApplication.e().getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean b()
    {
        NetworkInfo networkinfo = a();
        return networkinfo != null && networkinfo.isConnected() && networkinfo.getType() == 0;
    }

    public static boolean c()
    {
        NetworkInfo networkinfo = a();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static String d()
    {
        NetworkInfo networkinfo;
        String s;
        networkinfo = a();
        s = "unknown";
        if (networkinfo == null || !networkinfo.isConnectedOrConnecting())
        {
            break MISSING_BLOCK_LABEL_41;
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
