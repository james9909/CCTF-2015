// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.sdk:
//            dt, do, er

public class es extends BroadcastReceiver
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        private static final a e[];
        private int d;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/flurry/sdk/es$a, s);
        }

        public static a[] values()
        {
            return (a[])e.clone();
        }

        public int a()
        {
            return d;
        }

        static 
        {
            a = new a("NONE_OR_UNKNOWN", 0, 0);
            b = new a("WIFI", 1, 1);
            c = new a("CELL", 2, 2);
            a aa[] = new a[3];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            e = aa;
        }

        private a(String s, int i, int j)
        {
            super(s, i);
            d = j;
        }
    }


    private static es e;
    boolean a;
    Boolean b;
    private final dt c = new dt();
    private boolean d;

    public es()
    {
        d = false;
    }

    public static es a()
    {
        com/flurry/sdk/es;
        JVM INSTR monitorenter ;
        es es1;
        if (e == null)
        {
            e = new es();
        }
        es1 = e;
        com/flurry/sdk/es;
        JVM INSTR monitorexit ;
        return es1;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean a(Context context)
    {
        if (!d || context == null)
        {
            return true;
        }
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    private List f()
    {
        this;
        JVM INSTR monitorenter ;
        List list = c.a();
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(er er1)
    {
        this;
        JVM INSTR monitorenter ;
        c.a(er1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        Context context = com.flurry.sdk.do.a().b();
        boolean flag;
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        a = a(context);
        if (d)
        {
            d();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean c()
    {
        if (b != null)
        {
            return b.booleanValue();
        } else
        {
            return a;
        }
    }

    void d()
    {
        Context context = com.flurry.sdk.do.a().b();
        a = a(context);
        context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public a e()
    {
        if (!d)
        {
            return a.a;
        }
        NetworkInfo networkinfo = ((ConnectivityManager)com.flurry.sdk.do.a().b().getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnected())
        {
            return a.a;
        }
        switch (networkinfo.getType())
        {
        default:
            return a.c;

        case 1: // '\001'
        case 9: // '\t'
            return a.b;

        case 0: // '\0'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
            return a.c;

        case 8: // '\b'
            return a.a;
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        boolean flag = a(context);
        if (a != flag)
        {
            a = flag;
            for (Iterator iterator = f().iterator(); iterator.hasNext(); ((er)iterator.next()).a(a)) { }
        }
    }
}
