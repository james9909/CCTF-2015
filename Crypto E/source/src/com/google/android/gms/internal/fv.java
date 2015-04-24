// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

// Referenced classes of package com.google.android.gms.internal:
//            gu, gb, hf, gp, 
//            fz, fx, bm, br, 
//            bo, ct, gm, gf, 
//            fw, hg

public abstract class fv extends gu
{
    public static final class a extends fv
    {

        private final Context mContext;

        public void cT()
        {
        }

        public gb cU()
        {
            bm bm1 = new bm((String)br.py.get(), br.bF());
            return gf.a(mContext, bm1, new ct(), new gm());
        }

        public a(Context context, fx fx, fu.a a1)
        {
            super(fx, a1);
            mContext = context;
        }
    }

    public static final class b extends fv
        implements com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    {

        private final Object mL = new Object();
        private final fu.a uH;
        private final fw uI;

        public void cT()
        {
            synchronized (mL)
            {
                if (uI.isConnected() || uI.isConnecting())
                {
                    uI.disconnect();
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public gb cU()
        {
            obj;
            JVM INSTR monitorenter ;
            gb gb1;
            synchronized (mL)
            {
                gb1 = uI.cV();
            }
            return gb1;
_L2:
            obj;
            JVM INSTR monitorexit ;
            return null;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            DeadObjectException deadobjectexception;
            deadobjectexception;
            continue; /* Loop/switch isn't completed */
            IllegalStateException illegalstateexception;
            illegalstateexception;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void onConnected(Bundle bundle)
        {
            start();
        }

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            uH.b(new fz(0));
        }

        public void onConnectionSuspended(int i)
        {
            hf.T("Disconnected from remote ad request service.");
        }

        public b(Context context, fx fx1, fu.a a1)
        {
            super(fx1, a1);
            uH = a1;
            uI = new fw(context, this, this, fx1.lH.xR);
            uI.connect();
        }
    }


    private final fx qI;
    private final fu.a uH;

    public fv(fx fx, fu.a a1)
    {
        qI = fx;
        uH = a1;
    }

    private static fz a(gb gb1, fx fx)
    {
        fz fz1;
        try
        {
            fz1 = gb1.b(fx);
        }
        catch (RemoteException remoteexception)
        {
            hf.d("Could not fetch ad response from ad request service.", remoteexception);
            return null;
        }
        catch (NullPointerException nullpointerexception)
        {
            hf.d("Could not fetch ad response from ad request service due to an Exception.", nullpointerexception);
            return null;
        }
        catch (SecurityException securityexception)
        {
            hf.d("Could not fetch ad response from ad request service due to an Exception.", securityexception);
            return null;
        }
        catch (Throwable throwable)
        {
            gp.e(throwable);
            return null;
        }
        return fz1;
    }

    public final void cG()
    {
        gb gb1 = cU();
        if (gb1 != null) goto _L2; else goto _L1
_L1:
        fz fz1 = new fz(0);
_L4:
        cT();
        uH.b(fz1);
        return;
_L2:
        fz1 = a(gb1, qI);
        if (fz1 != null) goto _L4; else goto _L3
_L3:
        fz1 = new fz(0);
          goto _L4
        Exception exception;
        exception;
        cT();
        throw exception;
    }

    public abstract void cT();

    public abstract gb cU();

    public final void onStop()
    {
        cT();
    }
}
