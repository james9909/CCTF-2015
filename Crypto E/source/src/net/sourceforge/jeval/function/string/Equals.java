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

public class Equals
    implements Function
{

    public Equals()
    {
    }

    public String a()
    {
        return "equals";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist;
        arraylist = FunctionHelper.c(s, ',');
        if (arraylist.size() != 2)
        {
            throw new FunctionException("Two string arguments are required.");
        }
        String s1;
        if (FunctionHelper.a((String)arraylist.get(0), evaluator.a()).equals(FunctionHelper.a((String)arraylist.get(1), evaluator.a())))
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
        throw new FunctionException("Two string arguments are required.", exception);
    }
}
