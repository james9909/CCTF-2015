// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;

// Referenced classes of package com.google.android.gms.internal:
//            fh, hk, ay, fi, 
//            he, hf, fz, hl

public class fj extends fh
{

    fj(Context context, gn.a a, hk hk1, fl.a a1)
    {
        super(context, a, hk1, a1);
    }

    protected void f(long l)
    {
        ay ay1 = mj.aa();
        int i;
        int j;
        fi fi1;
        if (ay1.oA)
        {
            i = mContext.getResources().getDisplayMetrics().widthPixels;
            j = mContext.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            i = ay1.widthPixels;
            j = ay1.heightPixels;
        }
        fi1 = new fi(this, mj, i, j);
        he.xO.post(new Runnable(fi1) {

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

            
            {
                uj = fj.this;
                ui = fi1;
                super();
            }
        });
        e(l);
        if (fi1.cO())
        {
            hf.T("Ad-Network indicated no fill with passback URL.");
            throw new fk.a("AdNetwork sent passback url", 3);
        }
        if (!fi1.cP())
        {
            throw new fk.a("AdNetwork timed out", 2);
        } else
        {
            return;
        }
    }
}
