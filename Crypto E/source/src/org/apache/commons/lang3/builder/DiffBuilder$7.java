// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;


// Referenced classes of package org.apache.commons.lang3.builder:
//            Diff, DiffBuilder

class val.rhs extends Diff
{

    private static final long serialVersionUID = 1L;
    final DiffBuilder this$0;
    final double val$lhs;
    final double val$rhs;

    public Double getLeft()
    {
        return Double.valueOf(val$lhs);
    }

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Double getRight()
    {
        return Double.valueOf(val$rhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    (double d1)
    {
        this$0 = final_diffbuilder;
        val$lhs = D.this;
        val$rhs = d1;
        super(final_s);
    }
}
