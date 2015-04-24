// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gf, hf, hk

static final class vE
    implements vE
{

    final JSONObject vE;

    public void a(hk hk1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = "AFMA_buildAdURL";
        aobj[1] = vE;
        String s = String.format("javascript:%s(%s);", aobj);
        hf.W((new StringBuilder()).append("About to execute: ").append(s).toString());
        hk1.a("AFMA_buildAdURL", vE);
    }

    (JSONObject jsonobject)
    {
        vE = jsonobject;
        super();
    }
}
