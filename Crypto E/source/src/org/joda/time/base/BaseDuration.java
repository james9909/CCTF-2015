// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.ReadableDuration;

// Referenced classes of package org.joda.time.base:
//            AbstractDuration

public abstract class BaseDuration extends AbstractDuration
    implements Serializable, ReadableDuration
{

    private volatile long a;

    public BaseDuration(long l)
    {
        a = l;
    }

    public long a()
    {
        return a;
    }
}
