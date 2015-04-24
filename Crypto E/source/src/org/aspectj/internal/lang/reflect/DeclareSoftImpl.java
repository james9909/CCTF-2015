// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.DeclareSoft;
import org.aspectj.lang.reflect.PointcutExpression;

public class DeclareSoftImpl
    implements DeclareSoft
{

    private PointcutExpression a;
    private AjType b;
    private String c;

    public PointcutExpression a()
    {
        return a;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("declare soft : ");
        if (c != null)
        {
            stringbuffer.append(b.a());
        } else
        {
            stringbuffer.append(c);
        }
        stringbuffer.append(" : ");
        stringbuffer.append(a().a());
        return stringbuffer.toString();
    }
}
