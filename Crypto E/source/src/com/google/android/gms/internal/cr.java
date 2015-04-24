// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.google.android.gms.internal:
//            he, aj, hj, hi, 
//            hg, ah, ch, hf, 
//            hk

public class cr
{
    static class a
    {

        static int qG = 60000;
        static int qH = 10000;

    }

    public static interface b
    {

        public abstract void d(ah ah);
    }


    private final Context mContext;
    private final Object mL = new Object();
    private final hg mP;
    private hi qA;
    private ah qB;
    private int qC;
    private final List qy = Collections.synchronizedList(new ArrayList());
    private final String qz;

    public cr(Context context, hg hg, String s)
    {
        qC = 1;
        qz = s;
        mContext = context.getApplicationContext();
        mP = hg;
    }

    static int a(cr cr1, int i)
    {
        cr1.qC = i;
        return i;
    }

    static Context a(cr cr1)
    {
        return cr1.mContext;
    }

    static ah a(cr cr1, ah ah)
    {
        cr1.qB = ah;
        return ah;
    }

    static hi a(cr cr1, hi hi1)
    {
        cr1.qA = hi1;
        return hi1;
    }

    static void a(cr cr1, hi hi1, int i)
    {
        cr1.a(hi1, i);
    }

    private void a(hi hi1)
    {
        qC = 2;
        he.xO.post(new Runnable(hi1) {

            final hi qD;
            final cr qE;

            public void run()
            {
                cr.a(qE, qE.a(cr.a(qE), cr.b(qE)));
                cr.c(qE).a(new ah.a(this) {

                    final _cls1 qF;

                    public void aZ()
                    {
                        cr.a(qF.qE, qF.qD, a.qH);
                    }

            
            {
                qF = _pcls1;
                super();
            }
                });
                cr.c(qE).a("/jsLoaded", new ch(this) {

                    final _cls1 qF;

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
                qF = _pcls1;
                super();
            }
                });
                cr.c(qE).a("/requestReload", new ch(this) {

                    final _cls1 qF;

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
                qF = _pcls1;
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
                cr.a(qE, qD, a.qG);
            }

            
            {
                qE = cr.this;
                qD = hi1;
                super();
            }
        });
    }

    private void a(hi hi1, int i)
    {
        (new Timer()).schedule(new TimerTask(hi1) {

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

            
            {
                qE = cr.this;
                qD = hi1;
                super();
            }
        }, i);
    }

    static hg b(cr cr1)
    {
        return cr1.mP;
    }

    static void b(cr cr1, ah ah)
    {
        cr1.c(ah);
    }

    static ah c(cr cr1)
    {
        return cr1.qB;
    }

    private void c(ah ah)
    {
        List list = qy;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = qy.iterator(); iterator.hasNext(); ((b)iterator.next()).d(ah)) { }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    static Object d(cr cr1)
    {
        return cr1.mL;
    }

    static String e(cr cr1)
    {
        return cr1.qz;
    }

    protected ah a(Context context, hg hg)
    {
        return new aj(context, hg);
    }

    public hi bS()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (qA != null) goto _L2; else goto _L1
_L1:
        qA = new hj();
        a(qA);
_L3:
        hi hi2 = qA;
        return hi2;
_L2:
        if (qA.getStatus() != -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        qA = new hj();
        a(qA);
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (qC != 1) goto _L3; else goto _L4
_L4:
        hi hi1;
        a(new hj());
        hi1 = qA;
        obj;
        JVM INSTR monitorexit ;
        return hi1;
    }
}
