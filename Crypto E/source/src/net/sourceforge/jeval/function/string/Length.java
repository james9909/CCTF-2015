// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.string;

import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionHelper;
import net.sourceforge.jeval.function.FunctionResult;

public class Length
    implements Function
{

    public Length()
    {
    }

    public String a()
    {
        return "length";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        Integer integer;
        try
        {
            integer = new Integer(FunctionHelper.a(s, evaluator.a()).length());
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("One string argument is required.", exception);
        }
        return new FunctionResult(integer.toString(), 0);
    }
}
