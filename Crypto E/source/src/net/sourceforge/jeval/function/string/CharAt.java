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

public class CharAt
    implements Function
{

    public CharAt()
    {
    }

    public String a()
    {
        return "charAt";
    }

    public FunctionResult a(Evaluator evaluator, String s)
    {
        ArrayList arraylist = FunctionHelper.d(s, ',');
        if (arraylist.size() != 2)
        {
            throw new FunctionException("One string and one integer argument are required.");
        }
        String s2;
        try
        {
            String s1 = FunctionHelper.a((String)arraylist.get(0), evaluator.a());
            int i = ((Integer)arraylist.get(1)).intValue();
            char ac[] = new char[1];
            ac[0] = s1.charAt(i);
            s2 = new String(ac);
        }
        catch (FunctionException functionexception)
        {
            throw new FunctionException(functionexception.getMessage(), functionexception);
        }
        catch (Exception exception)
        {
            throw new FunctionException("One string and one integer argument are required.", exception);
        }
        return new FunctionResult(s2, 1);
    }
}
