// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fj, fz, hk, hl, 
//            fi

class ui
    implements Runnable
{

    final fi ui;
    final fj uj;

    public void run()
    {
label0:
        {
            synchronized (uj.mL)
            {
                if (uj.un.errorCode == -2)
                {
                    break label0;
                }
            }
            return;
        }
        uj.mj.dN().a(uj);
        ui.a(uj.un);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (fj fj1, fi fi1)
    {
        uj = fj1;
        ui = fi1;
        super();
    }
}
