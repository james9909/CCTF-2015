// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;

// Referenced classes of package org.joda.time.field:
//            DelegatedDateTimeField, LenientDateTimeField, FieldUtils

public class StrictDateTimeField extends DelegatedDateTimeField
{

    protected StrictDateTimeField(DateTimeField datetimefield)
    {
        super(datetimefield);
    }

    public static DateTimeField a(DateTimeField datetimefield)
    {
        if (datetimefield == null)
        {
            datetimefield = null;
        } else
        {
            if (datetimefield instanceof LenientDateTimeField)
            {
                datetimefield = ((LenientDateTimeField)datetimefield).j();
            }
            if (datetimefield.d())
            {
                return new StrictDateTimeField(datetimefield);
            }
        }
        return datetimefield;
    }

    public long b(long l, int i)
    {
        FieldUtils.a(this, i, c(l), d(l));
        return super.b(l, i);
    }

    public final boolean d()
    {
        return false;
    }
}
