// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import net.sourceforge.jeval.operator.Operator;

public class ExpressionOperand
{

    private String a;
    private Operator b;

    public ExpressionOperand(String s, Operator operator)
    {
        a = null;
        b = null;
        a = s;
        b = operator;
    }

    public String a()
    {
        return a;
    }

    public Operator b()
    {
        return b;
    }
}
