// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.math;

import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionResult;

public class Asin
    implements Function
{

    public Asin()
    {
    }

    public String a()
    {
        return "asin";
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
        return new FunctionResult((new Double(Math.asin(double1.doubleValue()))).toString(), 0);
    }
}
