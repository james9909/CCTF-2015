// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang.reflect;


public final class PerClauseKind extends Enum
{

    public static final PerClauseKind a;
    public static final PerClauseKind b;
    public static final PerClauseKind c;
    public static final PerClauseKind d;
    public static final PerClauseKind e;
    public static final PerClauseKind f;
    private static final PerClauseKind g[];

    private PerClauseKind(String s, int i)
    {
        super(s, i);
    }

    public static PerClauseKind valueOf(String s)
    {
        return (PerClauseKind)Enum.valueOf(org/aspectj/lang/reflect/PerClauseKind, s);
    }

    public static PerClauseKind[] values()
    {
        return (PerClauseKind[])g.clone();
    }

    static 
    {
        a = new PerClauseKind("SINGLETON", 0);
        b = new PerClauseKind("PERTHIS", 1);
        c = new PerClauseKind("PERTARGET", 2);
        d = new PerClauseKind("PERCFLOW", 3);
        e = new PerClauseKind("PERCFLOWBELOW", 4);
        f = new PerClauseKind("PERTYPEWITHIN", 5);
        PerClauseKind aperclausekind[] = new PerClauseKind[6];
        aperclausekind[0] = a;
        aperclausekind[1] = b;
        aperclausekind[2] = c;
        aperclausekind[3] = d;
        aperclausekind[4] = e;
        aperclausekind[5] = f;
        g = aperclausekind;
    }
}
