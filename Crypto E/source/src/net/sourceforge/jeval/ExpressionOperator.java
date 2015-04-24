// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import net.sourceforge.jeval.operator.Operator;

public class ExpressionOperator
{

    private Operator a;
    private Operator b;

    public ExpressionOperator(Operator operator, Operator operator1)
    {
        a = null;
        b = null;
        a = operator;
        b = operator1;
    }

    public Operator a()
    {
        return a;
    }

    public Operator b()
    {
        return b;
    }
}
