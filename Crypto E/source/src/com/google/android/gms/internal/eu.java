// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            es, hf, ev, ab, 
//            gx

public class eu
{

    private final String oU;

    public eu(String s)
    {
        oU = s;
    }

    public boolean a(String s, int i, Intent intent)
    {
        if (s != null && intent != null)
        {
            String s1 = es.e(intent);
            String s2 = es.f(intent);
            if (s1 != null && s2 != null)
            {
                if (!s.equals(es.H(s1)))
                {
                    hf.X("Developer payload not match.");
                    return false;
                }
                if (oU != null && !ev.c(oU, s1, s2))
                {
                    hf.X("Fail to verify signature.");
                    return false;
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }

    public String cL()
    {
        return ab.aG().dD();
    }
}
