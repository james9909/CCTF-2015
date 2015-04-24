// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.analytics;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class CommonParams
{

    private String city;
    private String country;
    private Integer friendCount;
    private String latlon;
    private String region;
    private String scUserAgent;
    private String sessionId;
    private String userId;

    public CommonParams()
    {
        city = "Unimplemented";
        country = "Unimplemented";
        latlon = "Unimplemented";
        region = "Unimplemented";
        sessionId = "00000000-0000-0000-0000-000000000000";
    }

    public CommonParams a(Integer integer)
    {
        friendCount = integer;
        return this;
    }

    public CommonParams a(String s)
    {
        scUserAgent = s;
        return this;
    }

    public CommonParams b(String s)
    {
        userId = s;
        return this;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof CommonParams))
        {
            return false;
        } else
        {
            CommonParams commonparams = (CommonParams)obj;
            return (new EqualsBuilder()).append(city, commonparams.city).append(country, commonparams.country).append(friendCount, commonparams.friendCount).append(latlon, commonparams.latlon).append(region, commonparams.region).append(scUserAgent, commonparams.scUserAgent).append(userId, commonparams.userId).append(sessionId, commonparams.sessionId).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(city).append(country).append(friendCount).append(latlon).append(region).append(scUserAgent).append(userId).append(sessionId).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
