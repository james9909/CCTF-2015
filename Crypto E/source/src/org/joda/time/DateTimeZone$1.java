// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import org.joda.time.chrono.BaseChronology;

// Referenced classes of package org.joda.time:
//            DateTimeZone, Chronology

static class nology extends BaseChronology
{

    public Chronology a(DateTimeZone datetimezone)
    {
        return this;
    }

    public DateTimeZone a()
    {
        return null;
    }

    public Chronology b()
    {
        return this;
    }

    public String toString()
    {
        return getClass().getName();
    }

    nology()
    {
    }
}
