// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            fc, de, el

class nit> extends fc
{

    final String a;
    final de b;

    public void a()
    {
        if (!b.e.remove(a))
        {
            el.a(6, b.d, (new StringBuilder()).append("Internal error. Block with id = ").append(a).append(" was not in progress state").toString());
        }
    }

    der(de de1, String s)
    {
        b = de1;
        a = s;
        super();
    }
}
