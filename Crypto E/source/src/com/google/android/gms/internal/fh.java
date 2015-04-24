// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            fk, hf, hk, ab, 
//            gy

public abstract class fh extends fk
    implements hl.a
{

    protected boolean tY;

    protected fh(Context context, gn.a a1, hk hk1, fl.a a2)
    {
        super(context, a1, hk1, a2);
        tY = false;
    }

    private boolean c(long l)
    {
        long l1 = 60000L - (SystemClock.elapsedRealtime() - l);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            mL.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            throw new fk.a("Ad request cancelled.", -1);
        }
        return true;
    }

    public void a(hk hk1)
    {
        synchronized (mL)
        {
            hf.T("WebView finished loading.");
            tY = true;
            mL.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void e(long l)
    {
        do
        {
            if (!c(l))
            {
                throw new fk.a("Timed out waiting for WebView to finish loading.", 2);
            }
        } while (!tY);
    }

    public void onStop()
    {
        synchronized (ul)
        {
            mj.stopLoading();
            ab.aL().a(mj.getWebView());
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
