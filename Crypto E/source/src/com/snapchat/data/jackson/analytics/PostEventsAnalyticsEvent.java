// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.analytics;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class PostEventsAnalyticsEvent
{

    private String a;
    private Map b;
    private Long c;
    private Map d;

    public PostEventsAnalyticsEvent()
    {
        c = Long.valueOf(0L);
        d = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof PostEventsAnalyticsEvent))
        {
            return false;
        } else
        {
            PostEventsAnalyticsEvent posteventsanalyticsevent = (PostEventsAnalyticsEvent)obj;
            return (new EqualsBuilder()).append(a, posteventsanalyticsevent.a).append(b, posteventsanalyticsevent.b).append(c, posteventsanalyticsevent.c).append(d, posteventsanalyticsevent.d).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
