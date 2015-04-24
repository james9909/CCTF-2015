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
    final short val$lhs;
    final short val$rhs;

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Short getLeft()
    {
        return Short.valueOf(val$lhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    public Short getRight()
    {
        return Short.valueOf(val$rhs);
    }

    (short word1)
    {
        this$0 = final_diffbuilder;
        val$lhs = S.this;
        val$rhs = word1;
        super(final_s);
    }
}
