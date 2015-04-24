// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;
import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            gz, hk, ch, gj, 
//            hf, gt

public final class gh
{

    private final Object mL = new Object();
    private hk mj;
    private String vG;
    private gz vH;
    public final ch vI = new ch() {

        final gh vK;

        public void a(hk hk, Map map)
        {
label0:
            {
                synchronized (gh.a(vK))
                {
                    if (!gh.b(vK).isDone())
                    {
                        break label0;
                    }
                }
                return;
            }
            gj gj1 = new gj(1, map);
            hf.X((new StringBuilder()).append("Invalid ").append(gj1.getType()).append(" request error: ").append(gj1.dc()).toString());
            gh.b(vK).b(gj1);
            obj;
            JVM INSTR monitorexit ;
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

            
            {
                vK = gh.this;
                super();
            }
    };
    public final ch vJ = new ch() {

        final gh vK;

        public void a(hk hk1, Map map)
        {
label0:
            {
                synchronized (gh.a(vK))
                {
                    if (!gh.b(vK).isDone())
                    {
                        break label0;
                    }
                }
                return;
            }
            gj gj1;
            String s1;
            gj1 = new gj(-2, map);
            s1 = gj1.getUrl();
            if (s1 != null)
            {
                break MISSING_BLOCK_LABEL_65;
            }
            hf.X("URL missing in loadAdUrl GMSG.");
            obj;
            JVM INSTR monitorexit ;
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            if (s1.contains("%40mediation_adapters%40"))
            {
                String s2 = s1.replaceAll("%40mediation_adapters%40", gt.a(hk1.getContext(), (String)map.get("check_adapters"), gh.c(vK)));
                gj1.setUrl(s2);
                hf.W((new StringBuilder()).append("Ad request URL modified to ").append(s2).toString());
            }
            gh.b(vK).b(gj1);
            obj;
            JVM INSTR monitorexit ;
        }

            
            {
                vK = gh.this;
                super();
            }
    };

    public gh(String s)
    {
        vH = new gz();
        vG = s;
    }

    static Object a(gh gh1)
    {
        return gh1.mL;
    }

    static gz b(gh gh1)
    {
        return gh1.vH;
    }

    static String c(gh gh1)
    {
        return gh1.vG;
    }

    public void b(hk hk)
    {
        mj = hk;
    }

    public Future db()
    {
        return vH;
    }
}
