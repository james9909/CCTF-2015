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

    public void a(hk hk, Map map)
    {
        while (!nm.a(map) || !map.containsKey("isVisible")) 
        {
            return;
        }
        boolean flag;
        Boolean boolean1;
        if ("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible")))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean1 = Boolean.valueOf(flag);
        nm.f(boolean1.booleanValue());
    }

    (af af1)
    {
        nm = af1;
        super();
    }
}
