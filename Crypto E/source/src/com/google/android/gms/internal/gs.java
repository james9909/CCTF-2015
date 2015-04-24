// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            gp

public class gs
{

    private final Object mL;
    private final gp wK;
    private final String wN;
    private int xo;
    private int xp;

    gs(gp gp1, String s)
    {
        mL = new Object();
        wK = gp1;
        wN = s;
    }

    public gs(String s)
    {
        this(gp.dl(), s);
    }

    public void e(int i, int j)
    {
        synchronized (mL)
        {
            xo = i;
            xp = j;
            wK.a(wN, this);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Bundle toBundle()
    {
        Bundle bundle;
        synchronized (mL)
        {
            bundle = new Bundle();
            bundle.putInt("pmnli", xo);
            bundle.putInt("pmnll", xp);
        }
        return bundle;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
