// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

final class ChainBuilder
{

    private final LinkedList list = new LinkedList();
    private final Map uniqueClasses = new HashMap();

    public ChainBuilder()
    {
    }

    private void ensureUnique(Object obj)
    {
        Object obj1 = uniqueClasses.remove(obj.getClass());
        if (obj1 != null)
        {
            list.remove(obj1);
        }
        uniqueClasses.put(obj.getClass(), obj);
    }

    public ChainBuilder addAllFirst(Collection collection)
    {
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                addFirst(iterator.next());
            }
        }
        return this;
    }

    public transient ChainBuilder addAllFirst(Object aobj[])
    {
        if (aobj != null)
        {
            int i = aobj.length;
            int j = 0;
            while (j < i) 
            {
                addFirst(aobj[j]);
                j++;
            }
        }
        return this;
    }

    public ChainBuilder addAllLast(Collection collection)
    {
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                addLast(iterator.next());
            }
        }
        return this;
    }

    public transient ChainBuilder addAllLast(Object aobj[])
    {
        if (aobj != null)
        {
            int i = aobj.length;
            int j = 0;
            while (j < i) 
            {
                addLast(aobj[j]);
                j++;
            }
        }
        return this;
    }

    public ChainBuilder addFirst(Object obj)
    {
        if (obj == null)
        {
            return this;
        } else
        {
            ensureUnique(obj);
            list.addFirst(obj);
            return this;
        }
    }

    public ChainBuilder addLast(Object obj)
    {
        if (obj == null)
        {
            return this;
        } else
        {
            ensureUnique(obj);
            list.addLast(obj);
            return this;
        }
    }

    public LinkedList build()
    {
        return new LinkedList(list);
    }
}
