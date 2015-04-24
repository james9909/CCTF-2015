// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.util:
//            LazyList

class a
    implements Iterator
{

    int a;
    final LazyList b;

    public boolean hasNext()
    {
        return a < b.a.size() || b.b.hasNext();
    }

    public Object next()
    {
        if (a < b.a.size())
        {
            List list = b.a;
            int i = a;
            a = i + 1;
            return list.get(i);
        } else
        {
            b.a.add(b.b.next());
            return next();
        }
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    (LazyList lazylist)
    {
        b = lazylist;
        super();
        a = 0;
    }
}
