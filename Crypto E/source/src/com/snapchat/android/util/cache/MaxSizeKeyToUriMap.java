// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import com.snapchat.android.Timber;
import java.io.File;
import java.io.PrintStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

// Referenced classes of package com.snapchat.android.util.cache:
//            FileUtils

public class MaxSizeKeyToUriMap
    implements Map
{

    private final long a;
    private final FileUtils b;
    private final Queue c;
    private long d;
    private HashMap e;

    private long a(String s)
    {
        File file = new File(s);
        long l = 0L;
        if (file != null)
        {
            l = file.length();
            file.delete();
        }
        return l;
    }

    private void a()
    {
        System.out.println((new StringBuilder()).append("LRU is ").append(c.toString()).toString());
        for (; d > a && c.size() > 1 && e.size() > 1; a(c.peek()))
        {
            System.out.println((new StringBuilder()).append("Evicting ").append((String)c.peek()).toString());
        }

    }

    private void b(String s)
    {
        c.remove(s);
        c.add(s);
    }

    public String a(Object obj)
    {
        Timber.c("MaxSizeKeyToUriMap", (new StringBuilder()).append("Removing file for").append(obj).toString(), new Object[0]);
        String s = b(obj);
        long l;
        String s1;
        if (s != null && s.length() != 0)
        {
            l = a(s);
        } else
        {
            l = 0L;
        }
        s1 = (String)e.remove(obj);
        c.remove(obj);
        if (s1 != null)
        {
            Timber.c("MaxSizeKeyToUriMap", (new StringBuilder()).append("Size of removedObject").append(l).toString(), new Object[0]);
            d = d - l;
        }
        return s1;
    }

    public String a(String s, String s1)
    {
        String s2 = b(s);
        if (s2 != null && s2.equals(s1))
        {
            b(s);
            return s1;
        }
        if (s2 != null)
        {
            long l = b.a(s2);
            d = d - l;
            a(s2);
        }
        if (s1 != null)
        {
            d = b.a(s1) + d;
        }
        String s3 = (String)e.put(s, s1);
        b(s);
        a();
        return s3;
    }

    public String b(Object obj)
    {
        b((String)obj);
        return (String)e.get(obj);
    }

    public void clear()
    {
        e.clear();
        c.clear();
        d = 0L;
    }

    public boolean containsKey(Object obj)
    {
        return e.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        return e.containsValue(obj);
    }

    public Set entrySet()
    {
        return e.entrySet();
    }

    public Object get(Object obj)
    {
        return b(obj);
    }

    public boolean isEmpty()
    {
        return e.isEmpty();
    }

    public Set keySet()
    {
        return e.keySet();
    }

    public Object put(Object obj, Object obj1)
    {
        return a((String)obj, (String)obj1);
    }

    public void putAll(Map map)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public Object remove(Object obj)
    {
        return a(obj);
    }

    public int size()
    {
        return (int)d;
    }

    public Collection values()
    {
        return e.values();
    }
}
