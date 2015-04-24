// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, af, hk

class nm
    implements ch
{

    final af nm;

    public void a(hk hk1, Map map)
    {
        if (!nm.a(map))
        {
            return;
        } else
        {
            nm.a(hk1.getWebView(), map);
            return;
        }
    }

    (af af1)
    {
        nm = af1;
        super();
    }
}
