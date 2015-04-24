// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            aj, ah, gz, he, 
//            hg

public class ai
{

    public ai()
    {
    }

    protected ah a(Context context, hg hg, gz gz1)
    {
        aj aj1 = new aj(context, hg);
        aj1.a(new ah.a(gz1, aj1) {

            final gz nq;
            final ai ns;
            final ah nt;

            public void aZ()
            {
                nq.b(nt);
            }

            
            {
                ns = ai.this;
                nq = gz1;
                nt = ah1;
                super();
            }
        });
        return aj1;
    }

    public Future a(Context context, hg hg, String s)
    {
        gz gz1 = new gz();
        he.xO.post(new Runnable(context, hg, gz1, s) {

            final Context no;
            final hg np;
            final gz nq;
            final String nr;
            final ai ns;

            public void run()
            {
                ns.a(no, np, nq).g(nr);
            }

            
            {
                ns = ai.this;
                no = context;
                np = hg;
                nq = gz1;
                nr = s;
                super();
            }
        });
        return gz1;
    }
}
