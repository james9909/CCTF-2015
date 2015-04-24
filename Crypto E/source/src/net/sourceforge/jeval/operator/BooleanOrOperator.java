// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;


// Referenced classes of package net.sourceforge.jeval.operator:
//            AbstractOperator

public class BooleanOrOperator extends AbstractOperator
{

    public BooleanOrOperator()
    {
        super("||", 1);
    }

    public double a(double d, double d1)
    {
        return d != 1.0D && d1 != 1.0D ? 0.0D : 1.0D;
    }
}
