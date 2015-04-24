// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;


// Referenced classes of package net.sourceforge.jeval.operator:
//            AbstractOperator

public class LessThanOrEqualOperator extends AbstractOperator
{

    public LessThanOrEqualOperator()
    {
        super("<=", 4);
    }

    public double a(double d, double d1)
    {
        return d > d1 ? 0.0D : 1.0D;
    }

    public String a(String s, String s1)
    {
        if (s.compareTo(s1) <= 0)
        {
            return "1.0";
        } else
        {
            return "0.0";
        }
    }
}
