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
    final boolean val$lhs[];
    final boolean val$rhs[];

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Boolean[] getLeft()
    {
        return ArrayUtils.toObject(val$lhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    public Boolean[] getRight()
    {
        return ArrayUtils.toObject(val$rhs);
    }

    (boolean aflag1[])
    {
        this$0 = final_diffbuilder;
        val$lhs = _5B_Z.this;
        val$rhs = aflag1;
        super(final_s);
    }
}
