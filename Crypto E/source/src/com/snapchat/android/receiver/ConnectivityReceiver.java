// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import com.snapchat.android.networkmanager.NetworkStatusManager;

public class ConnectivityReceiver extends BroadcastReceiver
{

    public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    private final NetworkStatusManager b;

    public ConnectivityReceiver()
    {
        this(NetworkStatusManager.a());
    }

    protected ConnectivityReceiver(NetworkStatusManager networkstatusmanager)
    {
        b = networkstatusmanager;
    }

    public void a(Context context)
    {
        context.registerReceiver(this, a);
    }

    public void b(Context context)
    {
        context.unregisterReceiver(this);
    }

    public void onReceive(Context context, Intent intent)
    {
        android.net.NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        b.a(networkinfo);
    }

}
