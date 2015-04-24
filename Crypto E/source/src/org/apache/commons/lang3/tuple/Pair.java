// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.builder.CompareToBuilder;

// Referenced classes of package org.apache.commons.lang3.tuple:
//            ImmutablePair

public abstract class Pair
    implements Serializable, Comparable, java.util.Map.Entry
{

    private static final long serialVersionUID = 0x44c3687a6deaffd1L;

    public Pair()
    {
    }

    public static Pair of(Object obj, Object obj1)
    {
        return new ImmutablePair(obj, obj1);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Pair)obj);
    }

    public int compareTo(Pair pair)
    {
        return (new CompareToBuilder()).append(getLeft(), pair.getLeft()).append(getRight(), pair.getRight()).toComparison();
    }

    public boolean equals(Object obj)
    {
        java.util.Map.Entry entry;
        if (obj != this)
        {
            if (obj instanceof java.util.Map.Entry)
            {
                if (!ObjectUtils.equals(getKey(), (entry = (java.util.Map.Entry)obj).getKey()) || !ObjectUtils.equals(getValue(), entry.getValue()))
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

    public final Object getKey()
    {
        return getLeft();
    }

    public abstract Object getLeft();

    public abstract Object getRight();

    public Object getValue()
    {
        return getRight();
    }

    public int hashCode()
    {
        int i;
        Object obj;
        int j;
        if (getKey() == null)
        {
            i = 0;
        } else
        {
            i = getKey().hashCode();
        }
        obj = getValue();
        j = 0;
        if (obj != null)
        {
            j = getValue().hashCode();
        }
        return i ^ j;
    }

    public String toString()
    {
        return (new StringBuilder()).append('(').append(getLeft()).append(',').append(getRight()).append(')').toString();
    }

    public String toString(String s)
    {
        Object aobj[] = new Object[2];
        aobj[0] = getLeft();
        aobj[1] = getRight();
        return String.format(s, aobj);
    }
}
