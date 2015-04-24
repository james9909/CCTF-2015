// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class j
    implements android.os.Handler.Callback
{
    final class a
    {

        private ComponentName UA;
        final j UB;
        private final String Uv;
        private final a Uw = new a(this);
        private final HashSet Ux = new HashSet();
        private boolean Uy;
        private IBinder Uz;
        private int mState;

        static int a(a a1, int i)
        {
            a1.mState = i;
            return i;
        }

        static ComponentName a(a a1, ComponentName componentname)
        {
            a1.UA = componentname;
            return componentname;
        }

        static IBinder a(a a1, IBinder ibinder)
        {
            a1.Uz = ibinder;
            return ibinder;
        }

        static HashSet a(a a1)
        {
            return a1.Ux;
        }

        public void a(h.f f)
        {
            Ux.add(f);
        }

        public void b(h.f f)
        {
            Ux.remove(f);
        }

        public boolean c(h.f f)
        {
            return Ux.contains(f);
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

        public a(String s)
        {
            UB = j.this;
            super();
            Uv = s;
            mState = 2;
        }
    }

    public class a.a
        implements ServiceConnection
    {

        final a UC;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            HashMap hashmap = j.a(UC.UB);
            hashmap;
            JVM INSTR monitorenter ;
            a.a(UC, ibinder);
            a.a(UC, componentname);
            for (Iterator iterator = a.a(UC).iterator(); iterator.hasNext(); ((h.f)iterator.next()).onServiceConnected(componentname, ibinder)) { }
            break MISSING_BLOCK_LABEL_78;
            Exception exception;
            exception;
            hashmap;
            JVM INSTR monitorexit ;
            throw exception;
            a.a(UC, 1);
            hashmap;
            JVM INSTR monitorexit ;
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            HashMap hashmap = j.a(UC.UB);
            hashmap;
            JVM INSTR monitorenter ;
            a.a(UC, null);
            a.a(UC, componentname);
            for (Iterator iterator = a.a(UC).iterator(); iterator.hasNext(); ((h.f)iterator.next()).onServiceDisconnected(componentname)) { }
            break MISSING_BLOCK_LABEL_75;
            Exception exception;
            exception;
            hashmap;
            JVM INSTR monitorexit ;
            throw exception;
            a.a(UC, 2);
            hashmap;
            JVM INSTR monitorexit ;
        }

        public a.a(a a1)
        {
            UC = a1;
            super();
        }
    }


    private static final Object Us = new Object();
    private static j Ut;
    private final HashMap Uu = new HashMap();
    private final Handler mHandler;
    private final Context mO;

    private j(Context context)
    {
        mHandler = new Handler(context.getMainLooper(), this);
        mO = context.getApplicationContext();
    }

    public static j I(Context context)
    {
        synchronized (Us)
        {
            if (Ut == null)
            {
                Ut = new j(context.getApplicationContext());
            }
        }
        return Ut;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static HashMap a(j j1)
    {
        return j1.Uu;
    }

    static Context b(j j1)
    {
        return j1.mO;
    }

    public boolean a(String s, h.f f)
    {
        HashMap hashmap = Uu;
        hashmap;
        JVM INSTR monitorenter ;
        a a1 = (a)Uu.get(s);
        if (a1 != null) goto _L2; else goto _L1
_L1:
        a1 = new a(s);
        a1.a(f);
        a1.jK();
        Uu.put(s, a1);
_L7:
        boolean flag = a1.isBound();
        hashmap;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        mHandler.removeMessages(0, a1);
        if (a1.c(f))
        {
            throw new IllegalStateException((new StringBuilder()).append("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=").append(s).toString());
        }
        break MISSING_BLOCK_LABEL_123;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        a1.a(f);
        a1.getState();
        JVM INSTR tableswitch 1 2: default 181
    //                   1 156
    //                   2 173;
           goto _L3 _L4 _L5
_L3:
        if (true) goto _L7; else goto _L6
_L6:
_L4:
        f.onServiceConnected(a1.getComponentName(), a1.getBinder());
          goto _L7
_L5:
        a1.jK();
          goto _L7
    }

    public void b(String s, h.f f)
    {
        HashMap hashmap = Uu;
        hashmap;
        JVM INSTR monitorenter ;
        a a1 = (a)Uu.get(s);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        throw new IllegalStateException((new StringBuilder()).append("Nonexistent connection status for service action: ").append(s).toString());
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        if (!a1.c(f))
        {
            throw new IllegalStateException((new StringBuilder()).append("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=").append(s).toString());
        }
        a1.b(f);
        if (a1.jN())
        {
            Message message = mHandler.obtainMessage(0, a1);
            mHandler.sendMessageDelayed(message, 5000L);
        }
        hashmap;
        JVM INSTR monitorexit ;
    }

    public boolean handleMessage(Message message)
    {
        a a1;
        switch (message.what)
        {
        default:
            return false;

        case 0: // '\0'
            a1 = (a)message.obj;
            break;
        }
        synchronized (Uu)
        {
            if (a1.jN())
            {
                a1.jL();
                Uu.remove(a1.jM());
            }
        }
        return true;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
