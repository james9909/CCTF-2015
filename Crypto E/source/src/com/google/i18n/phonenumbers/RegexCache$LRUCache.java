// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;

// Referenced classes of package com.google.i18n.phonenumbers:
//            RegexCache

static class _cls1.a
{

    private LinkedHashMap a;
    private int b;

    static int a(_cls1.a a1)
    {
        return a1.b;
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

    public _cls1.a(int i)
    {
        b = i;
        a = new LinkedHashMap(1 + (i * 4) / 3, 0.75F, true) {

            final RegexCache.LRUCache a;

            protected boolean removeEldestEntry(java.util.Map.Entry entry)
            {
                return size() > RegexCache.LRUCache.a(a);
            }

            
            {
                a = RegexCache.LRUCache.this;
                super(i, f, flag);
            }
        };
    }
}
