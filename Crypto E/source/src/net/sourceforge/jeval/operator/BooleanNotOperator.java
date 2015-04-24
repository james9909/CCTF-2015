// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;


// Referenced classes of package net.sourceforge.jeval.operator:
//            AbstractOperator

public class BooleanNotOperator extends AbstractOperator
{

    public BooleanNotOperator()
    {
        super("!", 0, true);
    }

    public double a(double d)
    {
        double d1 = 1.0D;
        if (d == d1)
        {
            d1 = 0.0D;
        }
        return d1;
    }
}
