// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, cr, hi, hf, 
//            hk, ah

class qF
    implements ch
{

    final  qF;

    public void a(hk hk, Map map)
    {
label0:
        {
            synchronized (cr.d(qF.))
            {
                if (qF..getStatus() != -1 && qF..getStatus() != 1)
                {
                    break label0;
                }
            }
            return;
        }
        cr.b(qF., cr.c(qF.));
        qF..c(cr.c(qF.));
        cr.a(qF., 0);
        cr.a(qF., qF.);
        hf.T("Javascript has loaded.");
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    ( )
    {
        qF = ;
        super();
    }

    // Unreferenced inner class com/google/android/gms/internal/cr$1

/* anonymous class */
    class cr._cls1
        implements Runnable
    {

        final hi qD;
        final cr qE;

        public void run()
        {
            cr.a(qE, qE.a(cr.a(qE), cr.b(qE)));
            cr.c(qE).a(new cr._cls1._cls1());
            cr.c(qE).a("/jsLoaded", new cr._cls1._cls2(this));
            cr.c(qE).a("/requestReload", new cr._cls1._cls3());
            if (cr.e(qE).endsWith(".js"))
            {
                cr.c(qE).f(cr.e(qE));
            } else
            {
                cr.c(qE).g(cr.e(qE));
            }
            cr.a(qE, qD, cr.a.qG);
        }

            
            {
                qE = cr1;
                qD = hi1;
                super();
            }

        // Unreferenced inner class com/google/android/gms/internal/cr$1$1

/* anonymous class */
        class cr._cls1._cls1
            implements ah.a
        {

            final cr._cls1 qF;

            public void aZ()
            {
                cr.a(qF.qE, qF.qD, cr.a.qH);
            }

                    
                    {
                        qF = cr._cls1.this;
                        super();
                    }
        }


        // Unreferenced inner class com/google/android/gms/internal/cr$1$3

/* anonymous class */
        class cr._cls1._cls3
            implements ch
        {

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
        }

    }

}
