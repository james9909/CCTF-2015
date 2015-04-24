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

public class StartsWith
    implements Function
{

    public StartsWith()
    {
    }

    public String a()
    {
        return "startsWith";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist;
        arraylist = FunctionHelper.e(s, ',');
        if (arraylist.size() != 3)
        {
            throw new FunctionException("Two string arguments and one integer argument are required.");
        }
        String s1;
        if (FunctionHelper.a((String)arraylist.get(0), evaluator.a()).startsWith(FunctionHelper.a((String)arraylist.get(1), evaluator.a()), ((Integer)arraylist.get(2)).intValue()))
        {
            s1 = "1.0";
        } else
        {
            s1 = "0.0";
        }
        return new FunctionResult(s1, 0);
        FunctionException functionexception;
        functionexception;
        throw new FunctionException(functionexception.getMessage(), functionexception);
        Exception exception;
        exception;
        throw new FunctionException("Two string arguments and one integer argument are required.", exception);
    }
}
