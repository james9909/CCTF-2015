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
    final int val$lhs;
    final int val$rhs;

    public Integer getLeft()
    {
        return Integer.valueOf(val$lhs);
    }

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Integer getRight()
    {
        return Integer.valueOf(val$rhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    (int j)
    {
        this$0 = final_diffbuilder;
        val$lhs = I.this;
        val$rhs = j;
        super(final_s);
    }
}
