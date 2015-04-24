// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            w

public final class bs extends bu.a
{

    private final w pO;
    private final String pP;
    private final String pQ;

    public bs(w w1, String s, String s1)
    {
        pO = w1;
        pP = s;
        pQ = s1;
    }

    public void a(d d)
    {
        if (d == null)
        {
            return;
        } else
        {
            pO.b((View)e.f(d));
            return;
        }
    }

    public String getBaseURL()
    {
        return pP;
    }

    public String getContent()
    {
        return pQ;
    }

    public void recordClick()
    {
        pO.recordClick();
    }

    public void recordImpression()
    {
        pO.recordImpression();
    }
}
