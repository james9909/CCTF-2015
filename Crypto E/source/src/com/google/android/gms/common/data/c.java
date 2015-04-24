// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.s;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.google.android.gms.common.data:
//            DataBuffer

public class c
    implements Iterator
{

    protected final DataBuffer Sm;
    protected int Sn;

    public c(DataBuffer databuffer)
    {
        Sm = (DataBuffer)s.l(databuffer);
        Sn = -1;
    }

    public boolean hasNext()
    {
        return Sn < -1 + Sm.getCount();
    }

    public Object next()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException((new StringBuilder()).append("Cannot advance the iterator beyond ").append(Sn).toString());
        } else
        {
            DataBuffer databuffer = Sm;
            int i = 1 + Sn;
            Sn = i;
            return databuffer.get(i);
        }
    }

    public void remove()
    {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
