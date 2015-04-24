// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function.string;

import java.util.ArrayList;
import net.sourceforge.jeval.Evaluator;
import net.sourceforge.jeval.function.Function;
import net.sourceforge.jeval.function.FunctionException;
import net.sourceforge.jeval.function.FunctionHelper;
import net.sourceforge.jeval.function.FunctionResult;

public class LastIndexOf
    implements Function
{

    public LastIndexOf()
    {
    }

    public String a()
    {
        return "lastIndexOf";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist = FunctionHelper.e(s, ',');
        if (arraylist.size() != 3)
        {
            throw new FunctionException("Two string arguments and one integer argument are required.");
        }
        Integer integer;
        try
        {
            integer = new Integer(FunctionHelper.a((String)arraylist.get(0), evaluator.a()).lastIndexOf(FunctionHelper.a((String)arraylist.get(1), evaluator.a()), ((Integer)arraylist.get(2)).intValue()));
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Two string arguments and one integer argument are required.", exception);
        }
        return new FunctionResult(integer.toString(), 0);
    }
}
