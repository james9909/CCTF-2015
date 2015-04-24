// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.tuple;


// Referenced classes of package org.apache.commons.lang3.tuple:
//            Triple

public final class ImmutableTriple extends Triple
{

    private static final long serialVersionUID = 1L;
    public final Object left;
    public final Object middle;
    public final Object right;

    public ImmutableTriple(Object obj, Object obj1, Object obj2)
    {
        left = obj;
        middle = obj1;
        right = obj2;
    }

    public static ImmutableTriple of(Object obj, Object obj1, Object obj2)
    {
        return new ImmutableTriple(obj, obj1, obj2);
    }

    public Object getLeft()
    {
        return left;
    }

    public Object getMiddle()
    {
        return middle;
    }

    public Object getRight()
    {
        return right;
    }
}
