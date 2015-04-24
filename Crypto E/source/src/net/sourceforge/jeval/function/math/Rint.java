// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.math;

import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionResult;

public class Rint
    implements Function
{

    public Rint()
    {
    }

    public String a()
    {
        return "rint";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        Double double1;
        try
        {
            double1 = new Double(s);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Invalid argument.", exception);
        }
        return new FunctionResult((new Double(Math.rint(double1.doubleValue()))).toString(), 0);
    }
}
