// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, cg, hk, hf, 
//            dw

static final class 
    implements ch
{

    public void a(hk hk1, Map map)
    {
        dw dw1 = hk1.dM();
        if (dw1 == null)
        {
            hf.X("A GMSG tried to close something that wasn't an overlay.");
            return;
        } else
        {
            dw1.close();
            return;
        }
    }

    ()
    {
    }
}
