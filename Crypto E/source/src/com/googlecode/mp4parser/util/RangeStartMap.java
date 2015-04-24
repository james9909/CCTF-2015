// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class RangeStartMap
    implements Map
{

    TreeMap a;

    public RangeStartMap()
    {
        a = new TreeMap(new Comparator() {

            final RangeStartMap a;

            public int a(Comparable comparable, Comparable comparable1)
            {
                return -comparable.compareTo(comparable1);
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Comparable)obj, (Comparable)obj1);
            }

            
            {
                a = RangeStartMap.this;
                super();
            }
        });
    }

    public Object a(Comparable comparable, Object obj)
    {
        return a.put(comparable, obj);
    }

    public void clear()
    {
        a.clear();
    }

    public boolean containsKey(Object obj)
    {
        return a.get(obj) != null;
    }

    public boolean containsValue(Object obj)
    {
        return false;
    }

    public Set entrySet()
    {
        return a.entrySet();
    }

    public Object get(Object obj)
    {
        if (obj instanceof Comparable)
        {
            Comparable comparable = (Comparable)obj;
            if (!isEmpty())
            {
                Iterator iterator = a.keySet().iterator();
                Comparable comparable1 = (Comparable)iterator.next();
                while (iterator.hasNext()) 
                {
                    if (comparable.compareTo(comparable1) < 0)
                    {
                        comparable1 = (Comparable)iterator.next();
                    } else
                    {
                        return a.get(comparable1);
                    }
                }
                return a.get(comparable1);
            }
        }
        return null;
    }

    public boolean isEmpty()
    {
        return a.isEmpty();
    }

    public Set keySet()
    {
        return a.keySet();
    }

    public Object put(Object obj, Object obj1)
    {
        return a((Comparable)obj, (Object)obj1);
    }

    public void putAll(Map map)
    {
        a.putAll(map);
    }

    public Object remove(Object obj)
    {
        if (obj instanceof Comparable)
        {
            Comparable comparable = (Comparable)obj;
            if (!isEmpty())
            {
                Iterator iterator = a.keySet().iterator();
                Comparable comparable1 = (Comparable)iterator.next();
                while (iterator.hasNext()) 
                {
                    if (comparable.compareTo(comparable1) < 0)
                    {
                        comparable1 = (Comparable)iterator.next();
                    } else
                    {
                        return a.remove(comparable1);
                    }
                }
                return a.remove(comparable1);
            }
        }
        return null;
    }

    public int size()
    {
        return a.size();
    }

    public Collection values()
    {
        return a.values();
    }
}
