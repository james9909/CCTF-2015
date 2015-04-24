// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ah, ab, ay, hm, 
//            he, hk, hl, v, 
//            hg, t, dz, cf, 
//            ec, ci, ch

public class aj
    implements ah
{

    private final hk mj;

    public aj(Context context, hg hg)
    {
        mj = ab.aH().a(context, new ay(), false, false, null, hg);
    }

    static hk a(aj aj1)
    {
        return aj1.mj;
    }

    private void runOnUiThread(Runnable runnable)
    {
        if (he.dK())
        {
            runnable.run();
            return;
        } else
        {
            he.xO.post(runnable);
            return;
        }
    }

    public void a(ah.a a1)
    {
        mj.dN().a(new hl.a(a1) {

            final aj nw;
            final ah.a ny;

            public void a(hk hk1)
            {
                ny.aZ();
            }

            
            {
                nw = aj.this;
                ny = a1;
                super();
            }
        });
    }

    public void a(t t, dz dz, cf cf, ec ec, boolean flag, ci ci)
    {
        mj.dN().a(t, dz, cf, ec, flag, ci, null, new v(false), null);
    }

    public void a(String s, ch ch)
    {
        mj.dN().a(s, ch);
    }

    public void a(String s, JSONObject jsonobject)
    {
        runOnUiThread(new Runnable(s, jsonobject) {

            final String nu;
            final JSONObject nv;
            final aj nw;

            public void run()
            {
                aj.a(nw).a(nu, nv);
            }

            
            {
                nw = aj.this;
                nu = s;
                nv = jsonobject;
                super();
            }
        });
    }

    public void b(String s, ch ch)
    {
        mj.dN().b(s, ch);
    }

    public void f(String s)
    {
        runOnUiThread(new Runnable(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[] {
            s
        })) {

            final aj nw;
            final String nx;

            public void run()
            {
                aj.a(nw).loadData(nx, "text/html", "UTF-8");
            }

            
            {
                nw = aj.this;
                nx = s;
                super();
            }
        });
    }

    public void g(String s)
    {
        runOnUiThread(new Runnable(s) {

            final String nr;
            final aj nw;

            public void run()
            {
                aj.a(nw).loadUrl(nr);
            }

            
            {
                nw = aj.this;
                nr = s;
                super();
            }
        });
    }
}
