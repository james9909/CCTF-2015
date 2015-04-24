// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.field:
//            DelegatedDateTimeField, StrictDateTimeField, FieldUtils

public class LenientDateTimeField extends DelegatedDateTimeField
{

    private final Chronology a;

    protected LenientDateTimeField(DateTimeField datetimefield, Chronology chronology)
    {
        super(datetimefield);
        a = chronology;
    }

    public static DateTimeField a(DateTimeField datetimefield, Chronology chronology)
    {
        if (datetimefield == null)
        {
            datetimefield = null;
        } else
        {
            if (datetimefield instanceof StrictDateTimeField)
            {
                datetimefield = ((StrictDateTimeField)datetimefield).j();
            }
            if (!datetimefield.d())
            {
                return new LenientDateTimeField(datetimefield, chronology);
            }
        }
        return datetimefield;
    }

    public long b(long l, int i)
    {
        long l1 = a.a().d(l);
        long l2 = FieldUtils.b(i, a(l));
        long l3 = a().a(a.b()).a(l1, l2);
        return a.a().a(l3, false, l);
    }

    public final boolean d()
    {
        return true;
    }
}
