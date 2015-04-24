// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cr, ah, hi, ch, 
//            hf, hk

class qD
    implements Runnable
{

    final hi qD;
    final cr qE;

    public void run()
    {
        cr.a(qE, qE.a(cr.a(qE), cr.b(qE)));
        cr.c(qE).a(new ah.a() {

            final cr._cls1 qF;

            public void aZ()
            {
                cr.a(qF.qE, qF.qD, cr.a.qH);
            }

            
            {
                qF = cr._cls1.this;
                super();
            }
        });
        cr.c(qE).a("/jsLoaded", new ch() {

            final cr._cls1 qF;

            public void a(hk hk, Map map)
            {
label0:
                {
                    synchronized (cr.d(qF.qE))
                    {
                        if (qF.qD.getStatus() != -1 && qF.qD.getStatus() != 1)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                cr.b(qF.qE, cr.c(qF.qE));
                qF.qD.c(cr.c(qF.qE));
                cr.a(qF.qE, 0);
                cr.a(qF.qE, qF.qD);
                hf.T("Javascript has loaded.");
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                qF = cr._cls1.this;
                super();
            }
        });
        cr.c(qE).a("/requestReload", new ch() {

            final cr._cls1 qF;

            public void a(hk hk, Map map)
            {
                synchronized (cr.d(qF.qE))
                {
                    cr.a(qF.qE, 1);
                    hf.T("Javascript is requesting an update");
                }
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                qF = cr._cls1.this;
                super();
            }
        });
        if (cr.e(qE).endsWith(".js"))
        {
            cr.c(qE).f(cr.e(qE));
        } else
        {
            cr.c(qE).g(cr.e(qE));
        }
        cr.a(qE, qD, qG);
    }

    _cls3.qF(cr cr1, hi hi)
    {
        qE = cr1;
        qD = hi;
        super();
    }
}
