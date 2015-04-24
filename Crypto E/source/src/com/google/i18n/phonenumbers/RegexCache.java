// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.regex.Pattern;

public class RegexCache
{
    static class LRUCache
    {

        private LinkedHashMap a;
        private int b;

        static int a(LRUCache lrucache)
        {
            return lrucache.b;
        }

        public Object a(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            Object obj1 = a.get(obj);
            this;
            JVM INSTR monitorexit ;
            return obj1;
            Exception exception;
            exception;
            throw exception;
        }

        public void a(Object obj, Object obj1)
        {
            this;
            JVM INSTR monitorenter ;
            a.put(obj, obj1);
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public LRUCache(int i)
        {
            b = i;
            a = new _cls1(this, 1 + (i * 4) / 3, 0.75F, true);
        }
    }


    private LRUCache a;

    public RegexCache(int i)
    {
        a = new LRUCache(i);
    }

    public Pattern a(String s)
    {
        Pattern pattern = (Pattern)a.a(s);
        if (pattern == null)
        {
            pattern = Pattern.compile(s);
            a.a(s, pattern);
        }
        return pattern;
    }

    // Unreferenced inner class com/google/i18n/phonenumbers/RegexCache$LRUCache$1

/* anonymous class */
    class LRUCache._cls1 extends LinkedHashMap
    {

        final LRUCache a;

        protected boolean removeEldestEntry(java.util.Map.Entry entry)
        {
            return size() > LRUCache.a(a);
        }

            
            {
                a = lrucache;
                super(i, f, flag);
            }
    }

}
