// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.Comparator;

// Referenced classes of package com.googlecode.mp4parser.util:
//            RangeStartMap

class a
    implements Comparator
{

    final RangeStartMap a;

    public int a(Comparable comparable, Comparable comparable1)
    {
        return -comparable.compareTo(comparable1);
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Comparable)obj, (Comparable)obj1);
    }

    (RangeStartMap rangestartmap)
    {
        a = rangestartmap;
        super();
    }
}
