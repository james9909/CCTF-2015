// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import net.sourceforge.jeval.operator.Operator;

class NextOperator
{

    private Operator a;
    private int b;

    public NextOperator(Operator operator, int i)
    {
        a = null;
        b = -1;
        a = operator;
        b = i;
    }

    public Operator a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }
}
