// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.google.android.gms.internal:
//            gu, gc, hc, gn, 
//            fx, fz, gw, he, 
//            hf, u, ai

public class fp extends gu
{

    private final Object mL;
    private final fl.a uk;
    private final gn.a um;
    private final fz un;
    private final gc uv;
    private Future uw;

    public fp(Context context, u u, ai ai, gn.a a1, fl.a a2)
    {
        this(a1, a2, new gc(context, u, ai, new hc(), a1));
    }

    fp(gn.a a1, fl.a a2, gc gc1)
    {
        mL = new Object();
        um = a1;
        un = a1.wJ;
        uk = a2;
        uv = gc1;
    }

    static fl.a a(fp fp1)
    {
        return fp1.uk;
    }

    private gn r(int i)
    {
        return new gn(um.wI.uK, null, null, i, null, null, un.orientation, un.rb, um.wI.uN, false, null, null, null, null, null, un.va, um.lL, un.uY, um.wF, un.vd, un.ve, um.wC, null);
    }

    public void cG()
    {
        synchronized (mL)
        {
            uw = gw.submit(uv);
        }
        gn gn1 = (gn)uw.get(60000L, TimeUnit.MILLISECONDS);
        byte byte0 = -2;
_L1:
        CancellationException cancellationexception;
        InterruptedException interruptedexception;
        ExecutionException executionexception;
        TimeoutException timeoutexception;
        if (gn1 == null)
        {
            gn1 = r(byte0);
        }
        he.xO.post(new Runnable(gn1) {

            final gn up;
            final fp ux;

            public void run()
            {
                fp.a(ux).a(up);
            }

            
            {
                ux = fp.this;
                up = gn1;
                super();
            }
        });
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (TimeoutException timeoutexception)
        {
            hf.X("Timed out waiting for native ad.");
            byte0 = 2;
            gn1 = null;
        }
        // Misplaced declaration of an exception variable
        catch (ExecutionException executionexception)
        {
            gn1 = null;
            byte0 = 0;
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            byte0 = -1;
            gn1 = null;
        }
        // Misplaced declaration of an exception variable
        catch (CancellationException cancellationexception)
        {
            byte0 = -1;
            gn1 = null;
        }
          goto _L1
    }

    public void onStop()
    {
        synchronized (mL)
        {
            if (uw != null)
            {
                uw.cancel(true);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
