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
    final Object val$lhs[];
    final Object val$rhs[];

    public volatile Object getLeft()
    {
        return ((Object) (getLeft()));
    }

    public Object[] getLeft()
    {
        return val$lhs;
    }

    public volatile Object getRight()
    {
        return ((Object) (getRight()));
    }

    public Object[] getRight()
    {
        return val$rhs;
    }

    (Object aobj1[])
    {
        this$0 = final_diffbuilder;
        val$lhs = _5B_Ljava.lang.Object_3B_.this;
        val$rhs = aobj1;
        super(final_s);
    }
}
