// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseDateTime;
import org.joda.time.field.AbstractReadableInstantFieldProperty;

// Referenced classes of package org.joda.time:
//            ReadableDateTime, Chronology, DateTimeField

public final class DateMidnight extends BaseDateTime
    implements Serializable, ReadableDateTime
{
    public static final class Property extends AbstractReadableInstantFieldProperty
    {

        private DateMidnight a;
        private DateTimeField b;

        public DateTimeField a()
        {
            return b;
        }

        protected long b()
        {
            return a.x_();
        }

        protected Chronology c()
        {
            return a.d();
        }
    }


    public DateMidnight()
    {
    }

    protected long a(long l, Chronology chronology)
    {
        return chronology.u().e(l);
    }
}
