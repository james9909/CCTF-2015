// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.DeclareErrorOrWarning;
import org.aspectj.lang.reflect.PointcutExpression;

public class DeclareErrorOrWarningImpl
    implements DeclareErrorOrWarning
{

    private PointcutExpression a;
    private String b;
    private boolean c;

    public PointcutExpression a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public boolean c()
    {
        return c;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("declare ");
        String s;
        if (c())
        {
            s = "error : ";
        } else
        {
            s = "warning : ";
        }
        stringbuffer.append(s);
        stringbuffer.append(a().a());
        stringbuffer.append(" : ");
        stringbuffer.append("\"");
        stringbuffer.append(b());
        stringbuffer.append("\"");
        return stringbuffer.toString();
    }
}
