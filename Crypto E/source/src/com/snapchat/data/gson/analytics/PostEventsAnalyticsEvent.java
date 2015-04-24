// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.analytics;

import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class PostEventsAnalyticsEvent
{

    private String eventName;
    private Map eventParams;
    private Long eventTimestamp;

    public PostEventsAnalyticsEvent()
    {
        eventTimestamp = Long.valueOf(0L);
    }

    public PostEventsAnalyticsEvent a(Long long1)
    {
        eventTimestamp = long1;
        return this;
    }

    public PostEventsAnalyticsEvent a(String s)
    {
        eventName = s;
        return this;
    }

    public PostEventsAnalyticsEvent a(Map map)
    {
        eventParams = map;
        return this;
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
            return (new EqualsBuilder()).append(eventName, posteventsanalyticsevent.eventName).append(eventParams, posteventsanalyticsevent.eventParams).append(eventTimestamp, posteventsanalyticsevent.eventTimestamp).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(eventName).append(eventParams).append(eventTimestamp).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
