// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;


public class IntHashMap
{
    static class Entry
    {

        int a;
        int b;
        Object c;
        Entry d;

        protected Entry(int i, int j, Object obj, Entry entry)
        {
            a = i;
            b = j;
            c = obj;
            d = entry;
        }
    }


    private transient Entry a[];
    private transient int b;
    private int c;
    private float d;

    public IntHashMap()
    {
        this(20, 0.75F);
    }

    public IntHashMap(int i, float f)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal Capacity: ")).append(i).toString());
        }
        if (f <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal Load: ")).append(f).toString());
        }
        if (i == 0)
        {
            i = 1;
        }
        d = f;
        a = new Entry[i];
        c = (int)(f * (float)i);
    }

    public Object a(int i)
    {
        Entry aentry[] = a;
        Entry entry = aentry[(0x7fffffff & i) % aentry.length];
        do
        {
            if (entry == null)
            {
                return null;
            }
            if (entry.a == i)
            {
                return entry.c;
            }
            entry = entry.d;
        } while (true);
    }

    public Object a(int i, Object obj)
    {
        Entry aentry[] = a;
        int j = (i & 0x7fffffff) % aentry.length;
        Entry entry = aentry[j];
        do
        {
            if (entry == null)
            {
                if (b >= c)
                {
                    a();
                    aentry = a;
                    j = (i & 0x7fffffff) % aentry.length;
                }
                aentry[j] = new Entry(i, i, obj, aentry[j]);
                b = 1 + b;
                return null;
            }
            if (entry.a == i)
            {
                Object obj1 = entry.c;
                entry.c = obj;
                return obj1;
            }
            entry = entry.d;
        } while (true);
    }

    protected void a()
    {
        int i;
        Entry aentry[];
        int j;
        Entry aentry1[];
        i = a.length;
        aentry = a;
        j = 1 + i * 2;
        aentry1 = new Entry[j];
        c = (int)((float)j * d);
        a = aentry1;
_L2:
        int k = i - 1;
        if (i <= 0)
        {
            return;
        }
        Entry entry = aentry[k];
        do
        {
label0:
            {
                if (entry != null)
                {
                    break label0;
                }
                i = k;
            }
            if (true)
            {
                continue;
            }
            Entry entry1 = entry.d;
            int l = (0x7fffffff & entry.a) % j;
            entry.d = aentry1[l];
            aentry1[l] = entry;
            entry = entry1;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
