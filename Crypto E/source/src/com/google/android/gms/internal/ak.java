// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            ap, hf

public class ak
{

    private final Object mL = new Object();
    private final int nA;
    private final int nB;
    private final ap nC;
    private ArrayList nD;
    private int nE;
    private int nF;
    private int nG;
    private int nH;
    private String nI;
    private final int nz;

    public ak(int k, int l, int i1, int j1)
    {
        nD = new ArrayList();
        nE = 0;
        nF = 0;
        nG = 0;
        nI = "";
        nz = k;
        nA = l;
        nB = i1;
        nC = new ap(j1);
    }

    private String a(ArrayList arraylist, int k)
    {
        String s;
        if (arraylist.isEmpty())
        {
            s = "";
        } else
        {
            StringBuffer stringbuffer = new StringBuffer();
            Iterator iterator = arraylist.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                stringbuffer.append((String)iterator.next());
                stringbuffer.append(' ');
            } while (stringbuffer.length() <= k);
            stringbuffer.deleteCharAt(-1 + stringbuffer.length());
            s = stringbuffer.toString();
            if (s.length() >= k)
            {
                return s.substring(0, k);
            }
        }
        return s;
    }

    private void j(String s)
    {
        if (s == null || s.length() < nB)
        {
            return;
        }
        synchronized (mL)
        {
            nD.add(s);
            nE = nE + s.length();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    int a(int k, int l)
    {
        return k * nz + l * nA;
    }

    public boolean ba()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (nG == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String bb()
    {
        return nI;
    }

    public void bc()
    {
        synchronized (mL)
        {
            nH = -100 + nH;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void bd()
    {
        synchronized (mL)
        {
            nG = -1 + nG;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void be()
    {
        synchronized (mL)
        {
            nG = 1 + nG;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void bf()
    {
        synchronized (mL)
        {
            int k = a(nE, nF);
            if (k > nH)
            {
                nH = k;
                nI = nC.a(nD);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    int bg()
    {
        return nE;
    }

    public void c(int k)
    {
        nF = k;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof ak)
        {
            if (obj == this)
            {
                return true;
            }
            ak ak1 = (ak)obj;
            if (ak1.bb() != null && ak1.bb().equals(bb()))
            {
                return true;
            }
        }
        return false;
    }

    public int getScore()
    {
        return nH;
    }

    public void h(String s)
    {
        j(s);
        synchronized (mL)
        {
            if (nG < 0)
            {
                hf.T("ActivityContent: negative number of WebViews.");
            }
            bf();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int hashCode()
    {
        return bb().hashCode();
    }

    public void i(String s)
    {
        j(s);
    }

    public String toString()
    {
        return (new StringBuilder()).append("ActivityContent fetchId: ").append(nF).append(" score:").append(nH).append(" total_length:").append(nE).append("\n text: ").append(a(nD, 200)).append("\n signture: ").append(nI).toString();
    }
}
