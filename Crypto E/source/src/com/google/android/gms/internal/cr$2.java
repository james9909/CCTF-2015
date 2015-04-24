// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.TimerTask;

// Referenced classes of package com.google.android.gms.internal:
//            cr, hi

class qD extends TimerTask
{

    final hi qD;
    final cr qE;

    public void run()
    {
label0:
        {
            synchronized (cr.d(qE))
            {
                if (qD.getStatus() != -1 && qD.getStatus() != 1)
                {
                    break label0;
                }
            }
            return;
        }
        cr.a(qE, 1);
        qD.reject();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (cr cr1, hi hi1)
    {
        qE = cr1;
        qD = hi1;
        super();
    }
}
