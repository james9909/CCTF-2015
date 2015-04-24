// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            aj, hk

class nv
    implements Runnable
{

    final String nu;
    final JSONObject nv;
    final aj nw;

    public void run()
    {
        aj.a(nw).a(nu, nv);
    }

    (aj aj1, String s, JSONObject jsonobject)
    {
        nw = aj1;
        nu = s;
        nv = jsonobject;
        super();
    }
}
