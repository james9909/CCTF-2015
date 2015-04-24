// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.operator.Operator;

public class ParsedFunction
{

    private final Function a;
    private final String b;
    private final Operator c;

    public ParsedFunction(Function function, String s, Operator operator)
    {
        a = function;
        b = s;
        c = operator;
    }

    public Function a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public Operator c()
    {
        return c;
    }
}
