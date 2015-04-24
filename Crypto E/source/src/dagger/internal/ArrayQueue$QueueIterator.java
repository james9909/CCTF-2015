// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package dagger.internal:
//            ArrayQueue

class <init>
    implements Iterator
{

    final ArrayQueue a;
    private int b;
    private int c;
    private int d;

    public boolean hasNext()
    {
        return b != c;
    }

    public Object next()
    {
        if (b == c)
        {
            throw new NoSuchElementException();
        }
        Object obj = ArrayQueue.c(a)[b];
        if (ArrayQueue.b(a) != c || obj == null)
        {
            throw new ConcurrentModificationException();
        } else
        {
            d = b;
            b = 1 + b & -1 + ArrayQueue.c(a).length;
            return obj;
        }
    }

    public void remove()
    {
        if (d < 0)
        {
            throw new IllegalStateException();
        }
        if (ArrayQueue.a(a, d))
        {
            b = -1 + b & -1 + ArrayQueue.c(a).length;
            c = ArrayQueue.b(a);
        }
        d = -1;
    }

    private (ArrayQueue arrayqueue)
    {
        a = arrayqueue;
        super();
        b = ArrayQueue.a(a);
        c = ArrayQueue.b(a);
        d = -1;
    }

    d(ArrayQueue arrayqueue, d d1)
    {
        this(arrayqueue);
    }
}
