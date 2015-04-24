// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.math;

import java.util.ArrayList;
import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionHelper;
import net.sourceforge.jeval.function.FunctionResult;

public class Atan2
    implements Function
{

    public Atan2()
    {
    }

    public String a()
    {
        return "atan2";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist = FunctionHelper.b(s, ',');
        if (arraylist.size() != 2)
        {
            throw new FunctionException("Two numeric arguments are required.");
        }
        Double double1;
        try
        {
            double1 = new Double(Math.atan2(((Double)arraylist.get(0)).doubleValue(), ((Double)arraylist.get(1)).doubleValue()));
        }
        catch (Exception exception)
        {
            throw new FunctionException("Two numeric arguments are required.", exception);
        }
        return new FunctionResult(double1.toString(), 0);
    }
}
