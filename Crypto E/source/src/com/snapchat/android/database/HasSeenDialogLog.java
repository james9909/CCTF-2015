// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import com.snapchat.android.util.system.Clock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class HasSeenDialogLog
{
    public static class Entry
    {

        public static long a = 0x240c8400L;
        private final Clock b;
        private final String c;
        private final long d;

        public boolean a()
        {
            return b.b() - d > a;
        }

        public String b()
        {
            return c;
        }

        public long c()
        {
            return d;
        }


        protected Entry(Clock clock, String s, long l)
        {
            b = clock;
            c = s;
            d = l;
        }

        public Entry(String s, long l)
        {
            this(new Clock(), s, l);
        }
    }


    private final Map a;
    private final Clock b;

    public HasSeenDialogLog()
    {
        this(new Clock());
    }

    protected HasSeenDialogLog(Clock clock)
    {
        a = new HashMap();
        b = clock;
    }

    public List a()
    {
        ArrayList arraylist = new ArrayList();
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); arraylist.add(new Entry((String)entry.getKey(), ((Long)entry.getValue()).longValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return arraylist;
    }

    public void a(List list)
    {
        a.clear();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Entry entry = (Entry)iterator.next();
            if (!entry.a())
            {
                a.put(entry.b(), Long.valueOf(entry.c()));
            }
        } while (true);
    }

    public boolean a(String s)
    {
        return a.containsKey(s);
    }

    public void b(String s)
    {
        if (!a.containsKey(s))
        {
            a.put(s, Long.valueOf(b.b()));
        }
    }
}
