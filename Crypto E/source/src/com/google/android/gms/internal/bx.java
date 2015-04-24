// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            hf, bz

public class bx extends ca.a
    implements bz.a
{

    private final Object mL = new Object();
    private final String pS;
    private final Drawable pT;
    private final String pU;
    private final Drawable pV;
    private final String pW;
    private final double pX;
    private final String pY;
    private final String pZ;
    private bz qa;

    public bx(String s, Drawable drawable, String s1, Drawable drawable1, String s2, double d, 
            String s3, String s4)
    {
        pS = s;
        pT = drawable;
        pU = s1;
        pV = drawable1;
        pW = s2;
        pX = d;
        pY = s3;
        pZ = s4;
    }

    public void a(bz bz1)
    {
        synchronized (mL)
        {
            qa = bz1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String bH()
    {
        return pS;
    }

    public d bI()
    {
        return e.n(pT);
    }

    public d bJ()
    {
        return e.n(pV);
    }

    public String bK()
    {
        return pW;
    }

    public double bL()
    {
        return pX;
    }

    public String bM()
    {
        return pY;
    }

    public String bN()
    {
        return pZ;
    }

    public String getBody()
    {
        return pU;
    }

    public void j(int i)
    {
label0:
        {
            synchronized (mL)
            {
                if (qa != null)
                {
                    break label0;
                }
                hf.U("Attempt to perform click before app install ad initialized.");
            }
            return;
        }
        qa.b("2", i);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void recordImpression()
    {
label0:
        {
            synchronized (mL)
            {
                if (qa != null)
                {
                    break label0;
                }
                hf.U("Attempt to record impression before app install ad initialized.");
            }
            return;
        }
        qa.recordImpression();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
