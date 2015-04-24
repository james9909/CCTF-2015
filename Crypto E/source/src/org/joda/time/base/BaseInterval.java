// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.ReadableInterval;

// Referenced classes of package org.joda.time.base:
//            AbstractInterval

public abstract class BaseInterval extends AbstractInterval
    implements Serializable, ReadableInterval
{

    private volatile Chronology a;
    private volatile long b;
    private volatile long c;

    public BaseInterval(long l, long l1, Chronology chronology)
    {
        a = DateTimeUtils.a(chronology);
        a(l, l1);
        b = l;
        c = l1;
    }

    public Chronology a()
    {
        return a;
    }

    public long b()
    {
        return b;
    }

    public long c()
    {
        return c;
    }
}
