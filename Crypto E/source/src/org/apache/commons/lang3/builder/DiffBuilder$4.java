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
    final byte val$lhs[];
    final byte val$rhs[];

    public volatile Object getLeft()
    {
        return getLeft();
    }

    public Byte[] getLeft()
    {
        return ArrayUtils.toObject(val$lhs);
    }

    public volatile Object getRight()
    {
        return getRight();
    }

    public Byte[] getRight()
    {
        return ArrayUtils.toObject(val$rhs);
    }

    (byte abyte1[])
    {
        this$0 = final_diffbuilder;
        val$lhs = _5B_B.this;
        val$rhs = abyte1;
        super(final_s);
    }
}
