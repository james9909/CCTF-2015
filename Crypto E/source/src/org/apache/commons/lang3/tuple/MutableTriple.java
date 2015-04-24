// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.tuple;


// Referenced classes of package org.apache.commons.lang3.tuple:
//            Triple

public class MutableTriple extends Triple
{

    private static final long serialVersionUID = 1L;
    public Object left;
    public Object middle;
    public Object right;

    public MutableTriple()
    {
    }

    public MutableTriple(Object obj, Object obj1, Object obj2)
    {
        left = obj;
        middle = obj1;
        right = obj2;
    }

    public static MutableTriple of(Object obj, Object obj1, Object obj2)
    {
        return new MutableTriple(obj, obj1, obj2);
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

    public void setLeft(Object obj)
    {
        left = obj;
    }

    public void setMiddle(Object obj)
    {
        middle = obj;
    }

    public void setRight(Object obj)
    {
        right = obj;
    }
}
