// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BasePeriod;

// Referenced classes of package org.joda.time:
//            ReadablePeriod

public final class Period extends BasePeriod
    implements Serializable, ReadablePeriod
{

    public static final Period a = new Period();

    public Period()
    {
        super(0L, null, null);
    }

}
