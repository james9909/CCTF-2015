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
    final float val$lhs;
    final float val$rhs;

    public Float getLeft()
    {
        return Float.valueOf(val$lhs);
    }

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Float getRight()
    {
        return Float.valueOf(val$rhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    (float f1)
    {
        this$0 = final_diffbuilder;
        val$lhs = F.this;
        val$rhs = f1;
        super(final_s);
    }
}
