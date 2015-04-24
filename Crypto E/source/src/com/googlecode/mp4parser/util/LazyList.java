// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

// Referenced classes of package com.googlecode.mp4parser.util:
//            Logger

public class LazyList extends AbstractList
{

    private static final Logger c = Logger.a(com/googlecode/mp4parser/util/LazyList);
    List a;
    Iterator b;

    public LazyList(List list, Iterator iterator1)
    {
        a = list;
        b = iterator1;
    }

    private void a()
    {
        c.a("blowup running");
        do
        {
            if (!b.hasNext())
            {
                return;
            }
            a.add(b.next());
        } while (true);
    }

    public Object get(int i)
    {
        if (a.size() > i)
        {
            return a.get(i);
        }
        if (b.hasNext())
        {
            a.add(b.next());
            return get(i);
        } else
        {
            throw new NoSuchElementException();
        }
    }

    public Iterator iterator()
    {
        return new Iterator() {

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

            
            {
                b = LazyList.this;
                super();
                a = 0;
            }
        };
    }

    public int size()
    {
        c.a("potentially expensive size() call");
        a();
        return a.size();
    }

}
