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

public class Replace
    implements Function
{

    public Replace()
    {
    }

    public String a()
    {
        return "replace";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist;
        arraylist = FunctionHelper.c(s, ',');
        if (arraylist.size() != 3)
        {
            throw new FunctionException("One string argument and two character arguments are required.");
        }
        String s4;
        String s1 = FunctionHelper.a((String)arraylist.get(0), evaluator.a());
        String s2 = FunctionHelper.a((String)arraylist.get(1), evaluator.a());
        String s3 = FunctionHelper.a((String)arraylist.get(2), evaluator.a());
        if (s2.length() != 1)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        char c = s2.charAt(0);
        if (s3.length() != 1)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        s4 = s1.replace(c, s3.charAt(0));
        return new FunctionResult(s4, 1);
        try
        {
            throw new FunctionException("One string argument and two character arguments are required.");
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("One string argument and two character arguments are required.", exception);
        }
        throw new FunctionException("One string argument and two character arguments are required.");
    }
}
