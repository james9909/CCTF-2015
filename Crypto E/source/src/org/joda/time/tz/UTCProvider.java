// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.util.Collections;
import java.util.Set;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.tz:
//            Provider

public final class UTCProvider
    implements Provider
{

    public UTCProvider()
    {
    }

    public Set a()
    {
        return Collections.singleton("UTC");
    }

    public DateTimeZone a(String s)
    {
        if ("UTC".equalsIgnoreCase(s))
        {
            return DateTimeZone.a;
        } else
        {
            return null;
        }
    }
}
