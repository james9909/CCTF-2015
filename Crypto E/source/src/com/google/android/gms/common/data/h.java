// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

// Referenced classes of package com.google.android.gms.common.data:
//            c, DataBuffer, d

public class h extends c
{

    private Object SJ;

    public h(DataBuffer databuffer)
    {
        super(databuffer);
    }

    public Object next()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException((new StringBuilder()).append("Cannot advance the iterator beyond ").append(Sn).toString());
        }
        Sn = 1 + Sn;
        if (Sn == 0)
        {
            SJ = Sm.get(0);
            if (!(SJ instanceof d))
            {
                throw new IllegalStateException((new StringBuilder()).append("DataBuffer reference of type ").append(SJ.getClass()).append(" is not movable").toString());
            }
        } else
        {
            ((d)SJ).bz(Sn);
        }
        return SJ;
    }
}
