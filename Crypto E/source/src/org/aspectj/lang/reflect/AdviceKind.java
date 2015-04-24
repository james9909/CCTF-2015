// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang.reflect;


public final class AdviceKind extends Enum
{

    public static final AdviceKind a;
    public static final AdviceKind b;
    public static final AdviceKind c;
    public static final AdviceKind d;
    public static final AdviceKind e;
    private static final AdviceKind f[];

    private AdviceKind(String s, int i)
    {
        super(s, i);
    }

    public static AdviceKind valueOf(String s)
    {
        return (AdviceKind)Enum.valueOf(org/aspectj/lang/reflect/AdviceKind, s);
    }

    public static AdviceKind[] values()
    {
        return (AdviceKind[])f.clone();
    }

    static 
    {
        a = new AdviceKind("BEFORE", 0);
        b = new AdviceKind("AFTER", 1);
        c = new AdviceKind("AFTER_RETURNING", 2);
        d = new AdviceKind("AFTER_THROWING", 3);
        e = new AdviceKind("AROUND", 4);
        AdviceKind aadvicekind[] = new AdviceKind[5];
        aadvicekind[0] = a;
        aadvicekind[1] = b;
        aadvicekind[2] = c;
        aadvicekind[3] = d;
        aadvicekind[4] = e;
        f = aadvicekind;
    }
}
