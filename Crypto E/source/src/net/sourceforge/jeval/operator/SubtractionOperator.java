// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;


// Referenced classes of package net.sourceforge.jeval.operator:
//            AbstractOperator

public class SubtractionOperator extends AbstractOperator
{

    public SubtractionOperator()
    {
        super("-", 5, true);
    }

    public double a(double d)
    {
        return -d;
    }

    public double a(double d, double d1)
    {
        return (new Double(d - d1)).doubleValue();
    }
}
