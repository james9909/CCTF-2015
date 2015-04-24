// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

public final class Range
    implements Serializable
{
    static final class ComparableComparator extends Enum
        implements Comparator
    {

        private static final ComparableComparator $VALUES[];
        public static final ComparableComparator INSTANCE;

        public static ComparableComparator valueOf(String s)
        {
            return (ComparableComparator)Enum.valueOf(org/apache/commons/lang3/Range$ComparableComparator, s);
        }

        public static ComparableComparator[] values()
        {
            return (ComparableComparator[])$VALUES.clone();
        }

        public int compare(Object obj, Object obj1)
        {
            return ((Comparable)obj).compareTo(obj1);
        }

        static 
        {
            INSTANCE = new ComparableComparator("INSTANCE", 0);
            ComparableComparator acomparablecomparator[] = new ComparableComparator[1];
            acomparablecomparator[0] = INSTANCE;
            $VALUES = acomparablecomparator;
        }

        private ComparableComparator(String s, int i)
        {
            super(s, i);
        }
    }


    private static final long serialVersionUID = 1L;
    private final Comparator comparator;
    private transient int hashCode;
    private final Object maximum;
    private final Object minimum;
    private transient String toString;

    private Range(Object obj, Object obj1, Comparator comparator1)
    {
        if (obj == null || obj1 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Elements in a range must not be null: element1=").append(obj).append(", element2=").append(obj1).toString());
        }
        if (comparator1 == null)
        {
            comparator = ComparableComparator.INSTANCE;
        } else
        {
            comparator = comparator1;
        }
        if (comparator.compare(obj, obj1) < 1)
        {
            minimum = obj;
            maximum = obj1;
            return;
        } else
        {
            minimum = obj1;
            maximum = obj;
            return;
        }
    }

    public static Range between(Comparable comparable, Comparable comparable1)
    {
        return between(comparable, comparable1, null);
    }

    public static Range between(Object obj, Object obj1, Comparator comparator1)
    {
        return new Range(obj, obj1, comparator1);
    }

    public static Range is(Comparable comparable)
    {
        return between(comparable, comparable, null);
    }

    public static Range is(Object obj, Comparator comparator1)
    {
        return between(obj, obj, comparator1);
    }

    public boolean contains(Object obj)
    {
        boolean flag = true;
        if (obj == null)
        {
            return false;
        }
        if (comparator.compare(obj, minimum) <= -1 || comparator.compare(obj, maximum) >= flag)
        {
            flag = false;
        }
        return flag;
    }

    public boolean containsRange(Range range)
    {
        while (range == null || !contains(range.minimum) || !contains(range.maximum)) 
        {
            return false;
        }
        return true;
    }

    public int elementCompareTo(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Element is null");
        }
        if (isAfter(obj))
        {
            return -1;
        }
        return !isBefore(obj) ? 0 : 1;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null || obj.getClass() != getClass())
            {
                return false;
            }
            Range range = (Range)obj;
            if (!minimum.equals(range.minimum) || !maximum.equals(range.maximum))
            {
                return false;
            }
        }
        return true;
    }

    public Comparator getComparator()
    {
        return comparator;
    }

    public Object getMaximum()
    {
        return maximum;
    }

    public Object getMinimum()
    {
        return minimum;
    }

    public int hashCode()
    {
        int i = hashCode;
        if (hashCode == 0)
        {
            i = 37 * (37 * (629 + getClass().hashCode()) + minimum.hashCode()) + maximum.hashCode();
            hashCode = i;
        }
        return i;
    }

    public Range intersectionWith(Range range)
    {
        if (!isOverlappedBy(range))
        {
            throw new IllegalArgumentException(String.format("Cannot calculate intersection with non-overlapping range %s", new Object[] {
                range
            }));
        }
        if (equals(range))
        {
            return this;
        }
        Object obj;
        Object obj1;
        if (getComparator().compare(minimum, range.minimum) < 0)
        {
            obj = range.minimum;
        } else
        {
            obj = minimum;
        }
        if (getComparator().compare(maximum, range.maximum) < 0)
        {
            obj1 = maximum;
        } else
        {
            obj1 = range.maximum;
        }
        return between(obj, obj1, getComparator());
    }

    public boolean isAfter(Object obj)
    {
        while (obj == null || comparator.compare(obj, minimum) >= 0) 
        {
            return false;
        }
        return true;
    }

    public boolean isAfterRange(Range range)
    {
        if (range == null)
        {
            return false;
        } else
        {
            return isAfter(range.maximum);
        }
    }

    public boolean isBefore(Object obj)
    {
        while (obj == null || comparator.compare(obj, maximum) <= 0) 
        {
            return false;
        }
        return true;
    }

    public boolean isBeforeRange(Range range)
    {
        if (range == null)
        {
            return false;
        } else
        {
            return isBefore(range.minimum);
        }
    }

    public boolean isEndedBy(Object obj)
    {
        while (obj == null || comparator.compare(obj, maximum) != 0) 
        {
            return false;
        }
        return true;
    }

    public boolean isNaturalOrdering()
    {
        return comparator == ComparableComparator.INSTANCE;
    }

    public boolean isOverlappedBy(Range range)
    {
        while (range == null || !range.contains(minimum) && !range.contains(maximum) && !contains(range.minimum)) 
        {
            return false;
        }
        return true;
    }

    public boolean isStartedBy(Object obj)
    {
        while (obj == null || comparator.compare(obj, minimum) != 0) 
        {
            return false;
        }
        return true;
    }

    public String toString()
    {
        String s = toString;
        if (s == null)
        {
            StringBuilder stringbuilder = new StringBuilder(32);
            stringbuilder.append('[');
            stringbuilder.append(minimum);
            stringbuilder.append("..");
            stringbuilder.append(maximum);
            stringbuilder.append(']');
            s = stringbuilder.toString();
            toString = s;
        }
        return s;
    }

    public String toString(String s)
    {
        Object aobj[] = new Object[3];
        aobj[0] = minimum;
        aobj[1] = maximum;
        aobj[2] = comparator;
        return String.format(s, aobj);
    }
}
