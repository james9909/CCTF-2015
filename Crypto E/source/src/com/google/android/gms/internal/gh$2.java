// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, gh, gz, gj, 
//            hf, hk, gt

class vK
    implements ch
{

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
        String s;
        gj1 = new gj(-2, map);
        s = gj1.getUrl();
        if (s != null)
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
        if (s.contains("%40mediation_adapters%40"))
        {
            String s1 = s.replaceAll("%40mediation_adapters%40", gt.a(hk1.getContext(), (String)map.get("check_adapters"), gh.c(vK)));
            gj1.setUrl(s1);
            hf.W((new StringBuilder()).append("Ad request URL modified to ").append(s1).toString());
        }
        gh.b(vK).b(gj1);
        obj;
        JVM INSTR monitorexit ;
    }

    (gh gh1)
    {
        vK = gh1;
        super();
    }
}
