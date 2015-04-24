// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ChannelListResponse
{

    private List channels;

    public ChannelListResponse()
    {
        channels = new ArrayList();
    }

    public List a()
    {
        return channels;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ChannelListResponse))
        {
            return false;
        } else
        {
            ChannelListResponse channellistresponse = (ChannelListResponse)obj;
            return (new EqualsBuilder()).append(channels, channellistresponse.channels).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(channels).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
