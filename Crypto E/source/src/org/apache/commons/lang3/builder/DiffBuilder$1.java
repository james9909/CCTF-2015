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
    final boolean val$lhs;
    final boolean val$rhs;

    public Boolean getLeft()
    {
        return Boolean.valueOf(val$lhs);
    }

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Boolean getRight()
    {
        return Boolean.valueOf(val$rhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    (boolean flag1)
    {
        this$0 = final_diffbuilder;
        val$lhs = Z.this;
        val$rhs = flag1;
        super(final_s);
    }
}
