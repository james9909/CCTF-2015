// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class dq
{
    public static interface a
    {

        public abstract void a(String s, Object obj);
    }


    private Map a;
    private Map b;

    public dq()
    {
        a = new HashMap();
        b = new HashMap();
    }

    private boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    private void b(String s, Object obj)
    {
        if (b.get(s) != null)
        {
            for (Iterator iterator = ((List)b.get(s)).iterator(); iterator.hasNext(); ((a)iterator.next()).a(s, obj)) { }
        }
    }

    public Object a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = a.get(s);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, a a1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = TextUtils.isEmpty(s);
          goto _L1
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L1:
        if (flag || a1 == null) goto _L3; else goto _L2
_L2:
        Object obj = (List)b.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        obj = new LinkedList();
        ((List) (obj)).add(a1);
        b.put(s, obj);
        if (true) goto _L3; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = TextUtils.isEmpty(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (a(obj, a.get(s))) goto _L1; else goto _L3
_L3:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        a.remove(s);
_L4:
        b(s, obj);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        a.put(s, obj);
          goto _L4
    }

    public boolean b(String s, a a1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = TextUtils.isEmpty(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        if (a1 == null)
        {
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
        List list = (List)b.get(s);
        if (list == null)
        {
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
        boolean flag2 = list.remove(a1);
        flag1 = flag2;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
