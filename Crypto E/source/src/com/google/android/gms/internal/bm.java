// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            br, bo

public final class bm
{

    private String pn;
    private List po;

    public bm()
    {
        pn = (String)br.py.bE();
        po = new ArrayList();
    }

    public bm(String s, List list)
    {
        String s1;
        if (TextUtils.isEmpty(s))
        {
            s1 = (String)br.py.bE();
        } else
        {
            s1 = s;
        }
        pn = s1;
        po = list;
    }

    public String bC()
    {
        return pn;
    }

    public List bD()
    {
        return po;
    }
}
