// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.common.internal:
//            j

final class mState
{
    public class a
        implements ServiceConnection
    {

        final j.a UC;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            java.util.HashMap hashmap = j.a(UC.UB);
            hashmap;
            JVM INSTR monitorenter ;
            j.a.a(UC, ibinder);
            j.a.a(UC, componentname);
            for (Iterator iterator = j.a.a(UC).iterator(); iterator.hasNext(); ((h.f)iterator.next()).onServiceConnected(componentname, ibinder)) { }
            break MISSING_BLOCK_LABEL_78;
            Exception exception;
            exception;
            hashmap;
            JVM INSTR monitorexit ;
            throw exception;
            j.a.a(UC, 1);
            hashmap;
            JVM INSTR monitorexit ;
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            java.util.HashMap hashmap = j.a(UC.UB);
            hashmap;
            JVM INSTR monitorenter ;
            j.a.a(UC, null);
            j.a.a(UC, componentname);
            for (Iterator iterator = j.a.a(UC).iterator(); iterator.hasNext(); ((h.f)iterator.next()).onServiceDisconnected(componentname)) { }
            break MISSING_BLOCK_LABEL_75;
            Exception exception;
            exception;
            hashmap;
            JVM INSTR monitorexit ;
            throw exception;
            j.a.a(UC, 2);
            hashmap;
            JVM INSTR monitorexit ;
        }

        public a()
        {
            UC = j.a.this;
            super();
        }
    }


    private ComponentName UA;
    final j UB;
    private final String Uv;
    private final a Uw = new a();
    private final HashSet Ux = new HashSet();
    private boolean Uy;
    private IBinder Uz;
    private int mState;

    static int a(a.UC uc, int i)
    {
        uc.mState = i;
        return i;
    }

    static ComponentName a(mState mstate, ComponentName componentname)
    {
        mstate.UA = componentname;
        return componentname;
    }

    static IBinder a(UA ua, IBinder ibinder)
    {
        ua.Uz = ibinder;
        return ibinder;
    }

    static HashSet a(Uz uz)
    {
        return uz.Ux;
    }

    public void a(Ux ux)
    {
        Ux.add(ux);
    }

    public void b(Ux ux)
    {
        Ux.remove(ux);
    }

    public boolean c(Ux ux)
    {
        return Ux.contains(ux);
    }

    public IBinder getBinder()
    {
        return Uz;
    }

    public ComponentName getComponentName()
    {
        return UA;
    }

    public int getState()
    {
        return mState;
    }

    public boolean isBound()
    {
        return Uy;
    }

    public void jK()
    {
        Intent intent = (new Intent(Uv)).setPackage("com.google.android.gms");
        Uy = j.b(UB).bindService(intent, Uw, 129);
        if (Uy)
        {
            mState = 3;
            return;
        } else
        {
            j.b(UB).unbindService(Uw);
            return;
        }
    }

    public void jL()
    {
        j.b(UB).unbindService(Uw);
        Uy = false;
        mState = 2;
    }

    public String jM()
    {
        return Uv;
    }

    public boolean jN()
    {
        return Ux.isEmpty();
    }

    public a.UC(j j1, String s)
    {
        UB = j1;
        super();
        Uv = s;
        mState = 2;
    }
}
