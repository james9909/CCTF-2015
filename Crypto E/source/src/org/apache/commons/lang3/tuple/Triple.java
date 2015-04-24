// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.builder.CompareToBuilder;

// Referenced classes of package org.apache.commons.lang3.tuple:
//            ImmutableTriple

public abstract class Triple
    implements Serializable, Comparable
{

    private static final long serialVersionUID = 1L;

    public Triple()
    {
    }

    public static Triple of(Object obj, Object obj1, Object obj2)
    {
        return new ImmutableTriple(obj, obj1, obj2);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Triple)obj);
    }

    public int compareTo(Triple triple)
    {
        return (new CompareToBuilder()).append(getLeft(), triple.getLeft()).append(getMiddle(), triple.getMiddle()).append(getRight(), triple.getRight()).toComparison();
    }

    public boolean equals(Object obj)
    {
        Triple triple;
        if (obj != this)
        {
            if (obj instanceof Triple)
            {
                if (!ObjectUtils.equals(getLeft(), (triple = (Triple)obj).getLeft()) || !ObjectUtils.equals(getMiddle(), triple.getMiddle()) || !ObjectUtils.equals(getRight(), triple.getRight()))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public abstract Object getLeft();

    public abstract Object getMiddle();

    public abstract Object getRight();

    public int hashCode()
    {
        int i;
        int j;
        boolean flag;
        Object obj;
        int k;
        if (getLeft() == null)
        {
            i = 0;
        } else
        {
            i = getLeft().hashCode();
        }
        if (getMiddle() == null)
        {
            j = 0;
        } else
        {
            j = getMiddle().hashCode();
        }
        flag = i ^ j;
        obj = getRight();
        k = 0;
        if (obj != null)
        {
            k = getRight().hashCode();
        }
        return flag ^ k;
    }

    public String toString()
    {
        return (new StringBuilder()).append('(').append(getLeft()).append(',').append(getMiddle()).append(',').append(getRight()).append(')').toString();
    }

    public String toString(String s)
    {
        Object aobj[] = new Object[3];
        aobj[0] = getLeft();
        aobj[1] = getMiddle();
        aobj[2] = getRight();
        return String.format(s, aobj);
    }
}
