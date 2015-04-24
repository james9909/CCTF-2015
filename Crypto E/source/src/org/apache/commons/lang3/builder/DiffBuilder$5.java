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
    final char val$lhs;
    final char val$rhs;

    public Character getLeft()
    {
        return Character.valueOf(val$lhs);
    }

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Character getRight()
    {
        return Character.valueOf(val$rhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    (char c1)
    {
        this$0 = final_diffbuilder;
        val$lhs = C.this;
        val$rhs = c1;
        super(final_s);
    }
}
