// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.Comparator;

// Referenced classes of package org.apache.commons.lang3:
//            Range

static final class _cls9 extends Enum
    implements Comparator
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INSTANCE;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(org/apache/commons/lang3/Range$ComparableComparator, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    public int compare(Object obj, Object obj1)
    {
        return ((Comparable)obj).compareTo(obj1);
    }

    static 
    {
        INSTANCE = new <init>("INSTANCE", 0);
        r_3B_.clone aclone[] = new <init>[1];
        aclone[0] = INSTANCE;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
