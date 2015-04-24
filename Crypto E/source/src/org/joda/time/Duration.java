// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseDuration;

// Referenced classes of package org.joda.time:
//            ReadableDuration

public final class Duration extends BaseDuration
    implements Serializable, ReadableDuration
{

    public static final Duration a = new Duration(0L);

    public Duration(long l)
    {
        super(l);
    }

}
