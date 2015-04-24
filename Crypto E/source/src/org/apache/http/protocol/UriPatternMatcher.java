// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.util.Args;

public class UriPatternMatcher
{

    private final Map map = new HashMap();

    public UriPatternMatcher()
    {
    }

    public Map getObjects()
    {
        this;
        JVM INSTR monitorenter ;
        Map map1 = map;
        this;
        JVM INSTR monitorexit ;
        return map1;
        Exception exception;
        exception;
        throw exception;
    }

    public Object lookup(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Args.notNull(s, "Request path");
        obj = map.get(s);
        if (obj != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
        Iterator iterator = map.keySet().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        String s2;
        s2 = (String)iterator.next();
        if (!matchUriRequestPattern(s2, s))
        {
            break MISSING_BLOCK_LABEL_156;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (s1.length() >= s2.length() && (s1.length() != s2.length() || !s2.endsWith("*")))
        {
            break MISSING_BLOCK_LABEL_156;
        }
        Object obj1 = map.get(s2);
        Object obj2 = obj1;
_L5:
        obj = obj2;
        s1 = s2;
          goto _L4
_L2:
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
        s2 = s1;
        obj2 = obj;
          goto _L5
    }

    protected boolean matchUriRequestPattern(String s, String s1)
    {
        boolean flag1;
label0:
        {
            if (s.equals("*"))
            {
                return true;
            }
            if (!s.endsWith("*") || !s1.startsWith(s.substring(0, -1 + s.length())))
            {
                boolean flag = s.startsWith("*");
                flag1 = false;
                if (!flag)
                {
                    break label0;
                }
                boolean flag2 = s1.endsWith(s.substring(1, s.length()));
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        return flag1;
    }

    public void register(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(s, "URI request pattern");
        map.put(s, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setHandlers(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(map1, "Map of handlers");
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setObjects(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(map1, "Map of handlers");
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String toString()
    {
        return map.toString();
    }

    public void unregister(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        map.remove(s);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
