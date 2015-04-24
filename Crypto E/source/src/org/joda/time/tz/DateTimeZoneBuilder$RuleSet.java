// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.util.ArrayList;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeUtils;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time.tz:
//            DateTimeZoneBuilder

static final class c
{

    private static final int a;
    private ArrayList b;
    private int c;

    static 
    {
        long l = DateTimeUtils.a();
        a = 100 + ISOChronology.N().E().a(l);
    }

    ()
    {
        b = new ArrayList(10);
        c = 0x7fffffff;
    }
}
