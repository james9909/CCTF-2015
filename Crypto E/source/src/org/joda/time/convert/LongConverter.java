// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.convert;

import org.joda.time.Chronology;

// Referenced classes of package org.joda.time.convert:
//            AbstractConverter, DurationConverter, InstantConverter, PartialConverter

class LongConverter extends AbstractConverter
    implements DurationConverter, InstantConverter, PartialConverter
{

    static final LongConverter a = new LongConverter();

    protected LongConverter()
    {
    }

    public long a(Object obj, Chronology chronology)
    {
        return ((Long)obj).longValue();
    }

    public Class a()
    {
        return java/lang/Long;
    }

}
