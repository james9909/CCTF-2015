// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.internal:
//            gp, gq, av

public class go
{
    static final class a
    {

        private long wU;
        private long wV;

        public long di()
        {
            return wV;
        }

        public void dj()
        {
            wV = SystemClock.elapsedRealtime();
        }

        public void dk()
        {
            wU = SystemClock.elapsedRealtime();
        }

        public Bundle toBundle()
        {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", wU);
            bundle.putLong("tclose", wV);
            return bundle;
        }

        public a()
        {
            wU = -1L;
            wV = -1L;
        }
    }


    private final Object mL;
    private boolean vS;
    private final gp wK;
    private final LinkedList wL;
    private final String wM;
    private final String wN;
    private long wO;
    private long wP;
    private long wQ;
    private long wR;
    private long wS;
    private long wT;

    public go(gp gp1, String s, String s1)
    {
        mL = new Object();
        wO = -1L;
        wP = -1L;
        vS = false;
        wQ = -1L;
        wR = 0L;
        wS = -1L;
        wT = -1L;
        wK = gp1;
        wM = s;
        wN = s1;
        wL = new LinkedList();
    }

    public go(String s, String s1)
    {
        this(gp.dl(), s, s1);
    }

    public void df()
    {
        synchronized (mL)
        {
            if (wT != -1L && wP == -1L)
            {
                wP = SystemClock.elapsedRealtime();
                wK.a(this);
            }
            wK;
            gp.dp().df();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void dg()
    {
        synchronized (mL)
        {
            if (wT != -1L)
            {
                a a1 = new a();
                a1.dk();
                wL.add(a1);
                wR = 1L + wR;
                wK;
                gp.dp().dg();
                wK.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void dh()
    {
        synchronized (mL)
        {
            if (wT != -1L && !wL.isEmpty())
            {
                a a1 = (a)wL.getLast();
                if (a1.di() == -1L)
                {
                    a1.dj();
                    wK.a(this);
                }
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e(av av)
    {
        synchronized (mL)
        {
            wS = SystemClock.elapsedRealtime();
            wK;
            gp.dp().b(av, wS);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i(long l)
    {
        synchronized (mL)
        {
            wT = l;
            if (wT != -1L)
            {
                wK.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void j(long l)
    {
        synchronized (mL)
        {
            if (wT != -1L)
            {
                wO = l;
                wK.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Bundle toBundle()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        ArrayList arraylist;
        bundle = new Bundle();
        bundle.putString("seq_num", wM);
        bundle.putString("slotid", wN);
        bundle.putBoolean("ismediation", vS);
        bundle.putLong("treq", wS);
        bundle.putLong("tresponse", wT);
        bundle.putLong("timp", wP);
        bundle.putLong("tload", wQ);
        bundle.putLong("pcc", wR);
        bundle.putLong("tfetch", wO);
        arraylist = new ArrayList();
        for (Iterator iterator = wL.iterator(); iterator.hasNext(); arraylist.add(((a)iterator.next()).toBundle())) { }
        break MISSING_BLOCK_LABEL_160;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        bundle.putParcelableArrayList("tclick", arraylist);
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }

    public void w(boolean flag)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (wT == -1L)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        wQ = SystemClock.elapsedRealtime();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        wP = wQ;
        wK.a(this);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void x(boolean flag)
    {
        synchronized (mL)
        {
            if (wT != -1L)
            {
                vS = flag;
                wK.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
