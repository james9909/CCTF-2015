// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.function;


// Referenced classes of package net.sourceforge.jeval.function:
//            FunctionException

public class FunctionResult
{

    private String a;
    private int b;

    public FunctionResult(String s, int i)
    {
        if (i < 0 || i > 1)
        {
            throw new FunctionException("Invalid function result type.");
        } else
        {
            a = s;
            b = i;
            return;
        }
    }

    public String a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }
}
