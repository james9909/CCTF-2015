// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.string;

import net.sourceforge.jeval.EvaluationException;
import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionResult;

public class Eval
    implements Function
{

    public Eval()
    {
    }

    public String a()
    {
        return "eval";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        int i = 0;
        String s1;
        try
        {
            s1 = evaluator.a(s, false, true);
        }
        catch (EvaluationException evaluationexception)
        {
            throw new FunctionException(evaluationexception.getMessage(), evaluationexception);
        }
        try
        {
            Double.parseDouble(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            i = 1;
        }
        return new FunctionResult(s1, i);
    }
}
