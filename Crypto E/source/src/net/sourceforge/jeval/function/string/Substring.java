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

public class Substring
    implements Function
{

    public Substring()
    {
    }

    public String a()
    {
        return "substring";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist = FunctionHelper.f(s, ',');
        if (arraylist.size() != 3)
        {
            throw new FunctionException("One string argument and two integer arguments are required.");
        }
        String s1;
        try
        {
            s1 = FunctionHelper.a((String)arraylist.get(0), evaluator.a()).substring(((Integer)arraylist.get(1)).intValue(), ((Integer)arraylist.get(2)).intValue());
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("One string argument and two integer arguments are required.", exception);
        }
        return new FunctionResult(s1, 1);
    }
}
