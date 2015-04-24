// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.math;

import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionResult;

public class Random
    implements Function
{

    public Random()
    {
    }

    public String a()
    {
        return "random";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        return new FunctionResult((new Double(Math.random())).toString(), 0);
    }
}
