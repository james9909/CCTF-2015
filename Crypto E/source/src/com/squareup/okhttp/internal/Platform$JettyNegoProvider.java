// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

// Referenced classes of package com.squareup.okhttp.internal:
//            Util, Platform

static class a
    implements InvocationHandler
{

    private final List a;
    private boolean b;
    private String c;

    static boolean a(a a1)
    {
        return a1.b;
    }

    static String b(b b1)
    {
        return b1.c;
    }

    public Object invoke(Object obj, Method method, Object aobj[])
    {
        String s = method.getName();
        Class class1 = method.getReturnType();
        if (aobj == null)
        {
            aobj = Util.b;
        }
        if (s.equals("supports") && Boolean.TYPE == class1)
        {
            return Boolean.valueOf(true);
        }
        if (s.equals("unsupported") && Void.TYPE == class1)
        {
            b = true;
            return null;
        }
        if (s.equals("protocols") && aobj.length == 0)
        {
            return a;
        }
        if ((s.equals("selectProtocol") || s.equals("select")) && java/lang/String == class1 && aobj.length == 1 && (aobj[0] instanceof List))
        {
            List list = (List)aobj[0];
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                if (a.contains(list.get(j)))
                {
                    String s2 = (String)list.get(j);
                    c = s2;
                    return s2;
                }
            }

            String s1 = (String)a.get(0);
            c = s1;
            return s1;
        }
        if ((s.equals("protocolSelected") || s.equals("selected")) && aobj.length == 1)
        {
            c = (String)aobj[0];
            return null;
        } else
        {
            return method.invoke(this, aobj);
        }
    }

    public (List list)
    {
        a = list;
    }
}
