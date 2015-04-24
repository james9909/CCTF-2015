// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, gh, gz, gj, 
//            hf, hk

class vK
    implements ch
{

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

    (gh gh1)
    {
        vK = gh1;
        super();
    }
}
