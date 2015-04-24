// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.string;

import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionHelper;
import net.sourceforge.jeval.function.FunctionResult;

public class ToLowerCase
    implements Function
{

    public ToLowerCase()
    {
    }

    public String a()
    {
        return "toLowerCase";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        String s1;
        try
        {
            s1 = FunctionHelper.a(s, evaluator.a()).toLowerCase();
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("One string argument is required.", exception);
        }
        return new FunctionResult(s1, 1);
    }
}
