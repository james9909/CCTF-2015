// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, af, ad, hf, 
//            hk

class nm
    implements ch
{

    final af nm;

    public void a(hk hk, Map map)
    {
        if (!nm.a(map))
        {
            return;
        } else
        {
            hf.T((new StringBuilder()).append("Received request to untrack: ").append(af.b(nm).aP()).toString());
            nm.destroy();
            return;
        }
    }

    (af af1)
    {
        nm = af1;
        super();
    }
}
