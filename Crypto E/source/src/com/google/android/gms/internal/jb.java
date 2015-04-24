// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            jd, ji, jk

public abstract class jb
{

    protected final ji MW;
    private final String MX;
    private jk MY;

    protected jb(String s, String s1, String s2)
    {
        jd.aM(s);
        MX = s;
        MW = new ji(s1);
        if (!TextUtils.isEmpty(s2))
        {
            MW.aR(s2);
        }
    }

    public final void a(jk jk1)
    {
        MY = jk1;
        if (MY == null)
        {
            hF();
        }
    }

    protected final void a(String s, long l, String s1)
    {
        MW.a("Sending text message: %s to: %s", new Object[] {
            s, s1
        });
        MY.a(MX, s, l, s1);
    }

    public void aK(String s)
    {
    }

    public void b(long l, int i)
    {
    }

    public final String getNamespace()
    {
        return MX;
    }

    protected final long hE()
    {
        return MY.hC();
    }

    public void hF()
    {
    }
}
