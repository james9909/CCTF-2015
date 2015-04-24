// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal;

import org.aspectj.runtime.internal.cflowstack.ThreadStack;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactory;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl;
import org.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl11;

public class CFlowStack
{

    private static ThreadStackFactory a;
    private ThreadStack b;

    public CFlowStack()
    {
        b = a.a();
    }

    private static String a(String s, String s1)
    {
        String s2;
        try
        {
            s2 = System.getProperty(s, s1);
        }
        catch (SecurityException securityexception)
        {
            return s1;
        }
        return s2;
    }

    private static ThreadStackFactory a()
    {
        return new ThreadStackFactoryImpl();
    }

    private static ThreadStackFactory b()
    {
        return new ThreadStackFactoryImpl11();
    }

    private static void c()
    {
        boolean flag = true;
        String s = a("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        if (s.equals("unspecified"))
        {
            if (System.getProperty("java.class.version", "0.0").compareTo("46.0") < 0)
            {
                flag = false;
            }
        } else
        {
            boolean flag1;
label0:
            {
                if (!s.equals("yes"))
                {
                    boolean flag2 = s.equals("true");
                    flag1 = false;
                    if (!flag2)
                    {
                        break label0;
                    }
                }
                flag1 = flag;
            }
            flag = flag1;
        }
        if (flag)
        {
            a = a();
            return;
        } else
        {
            a = b();
            return;
        }
    }

    static 
    {
        c();
    }
}
