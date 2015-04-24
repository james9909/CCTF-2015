// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval.operator;

import net.sourceforge.jeval.EvaluationException;

// Referenced classes of package net.sourceforge.jeval.operator:
//            Operator

public abstract class AbstractOperator
    implements Operator
{

    private String a;
    private int b;
    private boolean c;

    public AbstractOperator(String s, int i)
    {
        a = null;
        b = 0;
        c = false;
        a = s;
        b = i;
    }

    public AbstractOperator(String s, int i, boolean flag)
    {
        a = null;
        b = 0;
        c = false;
        a = s;
        b = i;
        c = flag;
    }

    public double a(double d1)
    {
        return 0.0D;
    }

    public double a(double d1, double d2)
    {
        return 0.0D;
    }

    public String a()
    {
        return a;
    }

    public String a(String s, String s1)
    {
        throw new EvaluationException("Invalid operation for a string.");
    }

    public int b()
    {
        return b;
    }

    public int c()
    {
        return a.length();
    }

    public boolean d()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (obj != null)
        {
            if (!(obj instanceof AbstractOperator))
            {
                throw new IllegalStateException("Invalid operator object.");
            }
            AbstractOperator abstractoperator = (AbstractOperator)obj;
            if (a.equals(abstractoperator.a()))
            {
                return true;
            }
        }
        return false;
    }

    public String toString()
    {
        return a();
    }
}
