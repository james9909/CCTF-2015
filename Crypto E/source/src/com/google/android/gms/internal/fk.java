// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            gu, hf, he, fz, 
//            gn, fx, hk

public abstract class fk extends gu
{
    public static final class a extends Exception
    {

        private final int uq;

        public int getErrorCode()
        {
            return uq;
        }

        public a(String s, int i)
        {
            super(s);
            uq = i;
        }
    }


    protected final Context mContext;
    protected final Object mL = new Object();
    protected final hk mj;
    protected final fl.a uk;
    protected final Object ul = new Object();
    protected final gn.a um;
    protected fz un;

    protected fk(Context context, gn.a a1, hk hk, fl.a a2)
    {
        mContext = context;
        um = a1;
        un = a1.wJ;
        mj = hk;
        uk = a2;
    }

    public void cG()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        int i;
        hf.T("AdRendererBackgroundTask started.");
        i = um.errorCode;
        f(SystemClock.elapsedRealtime());
_L3:
        gn gn1 = q(i);
        he.xO.post(new Runnable(gn1) {

            final fk uo;
            final gn up;

            public void run()
            {
                synchronized (uo.mL)
                {
                    uo.h(up);
                }
                return;
                exception1;
                obj1;
                JVM INSTR monitorexit ;
                throw exception1;
            }

            
            {
                uo = fk.this;
                up = gn1;
                super();
            }
        });
        return;
        a a1;
        a1;
        int j = a1.getErrorCode();
        if (j != 3 && j != -1) goto _L2; else goto _L1
_L1:
        hf.V(a1.getMessage());
_L4:
        if (un != null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        un = new fz(j);
_L5:
        he.xO.post(new Runnable() {

            final fk uo;

            public void run()
            {
                uo.onStop();
            }

            
            {
                uo = fk.this;
                super();
            }
        });
        i = j;
          goto _L3
_L2:
        hf.X(a1.getMessage());
          goto _L4
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        un = new fz(j, un.rb);
          goto _L5
    }

    protected abstract void f(long l);

    protected void h(gn gn1)
    {
        uk.a(gn1);
    }

    public void onStop()
    {
    }

    protected gn q(int i)
    {
        fx fx1 = um.wI;
        return new gn(fx1.uK, mj, un.qX, i, un.qY, un.vb, un.orientation, un.rb, fx1.uN, un.uZ, null, null, null, null, null, un.va, um.lL, un.uY, um.wF, un.vd, un.ve, um.wC, null);
    }
}
