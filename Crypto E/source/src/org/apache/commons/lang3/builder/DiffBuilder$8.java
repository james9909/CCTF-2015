// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

// Referenced classes of package org.apache.commons.lang3.builder:
//            Diff, DiffBuilder

class val.rhs extends Diff
{

    private static final long serialVersionUID = 1L;
    final DiffBuilder this$0;
    final double val$lhs[];
    final double val$rhs[];

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Double[] getLeft()
    {
        return ArrayUtils.toObject(val$lhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    public Double[] getRight()
    {
        return ArrayUtils.toObject(val$rhs);
    }

    (double ad1[])
    {
        this$0 = final_diffbuilder;
        val$lhs = _5B_D.this;
        val$rhs = ad1;
        super(final_s);
    }
}
