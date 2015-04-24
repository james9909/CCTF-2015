// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.AjTypeSystem;
import org.aspectj.lang.reflect.Pointcut;
import org.aspectj.lang.reflect.PointcutExpression;

public class PointcutImpl
    implements Pointcut
{

    private final String a;
    private final PointcutExpression b;
    private final Method c;
    private String d[];

    public PointcutExpression a()
    {
        return b;
    }

    public String b()
    {
        return a;
    }

    public AjType[] c()
    {
        Class aclass[] = c.getParameterTypes();
        AjType aajtype[] = new AjType[aclass.length];
        for (int i = 0; i < aajtype.length; i++)
        {
            aajtype[i] = AjTypeSystem.a(aclass[i]);
        }

        return aajtype;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(b());
        stringbuffer.append("(");
        AjType aajtype[] = c();
        for (int i = 0; i < aajtype.length; i++)
        {
            stringbuffer.append(aajtype[i].a());
            if (d != null && d[i] != null)
            {
                stringbuffer.append(" ");
                stringbuffer.append(d[i]);
            }
            if (i + 1 < aajtype.length)
            {
                stringbuffer.append(",");
            }
        }

        stringbuffer.append(") : ");
        stringbuffer.append(a().a());
        return stringbuffer.toString();
    }
}
