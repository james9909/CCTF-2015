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

public class Concat
    implements Function
{

    public Concat()
    {
    }

    public String a()
    {
        return "concat";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist = FunctionHelper.c(s, ',');
        if (arraylist.size() != 2)
        {
            throw new FunctionException("Two string arguments are required.");
        }
        String s1;
        try
        {
            s1 = FunctionHelper.a((String)arraylist.get(0), evaluator.a()).concat(FunctionHelper.a((String)arraylist.get(1), evaluator.a()));
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("Two string arguments are required.", exception);
        }
        return new FunctionResult(s1, 1);
    }
}
