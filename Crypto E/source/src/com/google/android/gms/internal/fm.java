// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;

// Referenced classes of package com.google.android.gms.internal:
//            fh, he, hk, fz, 
//            hl, hf, ab, gx

public class fm extends fh
{

    fm(Context context, gn.a a, hk hk, fl.a a1)
    {
        super(context, a, hk, a1);
    }

    protected void cQ()
    {
    }

    protected void f(long l)
    {
        he.xO.post(new Runnable() {

            final fm ur;

            public void run()
            {
label0:
                {
                    synchronized (ur.mL)
                    {
                        if (ur.un.errorCode == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                ur.mj.dN().a(ur);
                ur.cQ();
                hf.W("Loading HTML in WebView.");
                ur.mj.loadDataWithBaseURL(ab.aG().O(ur.un.sT), ur.un.uX, "text/html", "UTF-8", null);
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                ur = fm.this;
                super();
            }
        });
        e(l);
    }
}
