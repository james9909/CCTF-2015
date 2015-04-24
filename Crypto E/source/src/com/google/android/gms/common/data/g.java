// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.common.data:
//            DataBuffer, DataHolder

public abstract class g extends DataBuffer
{

    private boolean SH;
    private ArrayList SI;

    protected g(DataHolder dataholder)
    {
        super(dataholder);
        SH = false;
    }

    private void jr()
    {
        this;
        JVM INSTR monitorenter ;
        if (SH) goto _L2; else goto _L1
_L1:
        int i;
        i = Rb.getCount();
        SI = new ArrayList();
        if (i <= 0) goto _L4; else goto _L3
_L3:
        String s;
        String s1;
        SI.add(Integer.valueOf(0));
        s = jq();
        int j = Rb.bB(0);
        s1 = Rb.c(s, 0, j);
        int k = 1;
_L10:
        if (k >= i) goto _L4; else goto _L5
_L5:
        int i1;
        String s2;
        i1 = Rb.bB(k);
        s2 = Rb.c(s, k, i1);
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        throw new NullPointerException((new StringBuilder()).append("Missing value for markerColumn: ").append(s).append(", at row: ").append(k).append(", for window: ").append(i1).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (s2.equals(s1)) goto _L7; else goto _L6
_L6:
        SI.add(Integer.valueOf(k));
          goto _L8
_L4:
        SH = true;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L7:
        s2 = s1;
_L8:
        k++;
        s1 = s2;
        if (true) goto _L10; else goto _L9
_L9:
    }

    int bF(int i)
    {
        if (i < 0 || i >= SI.size())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        } else
        {
            return ((Integer)SI.get(i)).intValue();
        }
    }

    protected int bG(int i)
    {
        int j;
        if (i < 0 || i == SI.size())
        {
            j = 0;
        } else
        {
            if (i == -1 + SI.size())
            {
                j = Rb.getCount() - ((Integer)SI.get(i)).intValue();
            } else
            {
                j = ((Integer)SI.get(i + 1)).intValue() - ((Integer)SI.get(i)).intValue();
            }
            if (j == 1)
            {
                int k = bF(i);
                int i1 = Rb.bB(k);
                String s = js();
                if (s != null && Rb.c(s, k, i1) == null)
                {
                    return 0;
                }
            }
        }
        return j;
    }

    public final Object get(int i)
    {
        jr();
        return l(bF(i), bG(i));
    }

    public int getCount()
    {
        jr();
        return SI.size();
    }

    protected abstract String jq();

    protected String js()
    {
        return null;
    }

    protected abstract Object l(int i, int j);
}
