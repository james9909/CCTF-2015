// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.rich_story;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class RichStorySectionResponse
{

    private List channels;
    private String id;
    private String name;
    private Map properties;
    private String type;

    public RichStorySectionResponse()
    {
        channels = new ArrayList();
    }

    public String a()
    {
        return type;
    }

    public List b()
    {
        return channels;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStorySectionResponse))
        {
            return false;
        } else
        {
            RichStorySectionResponse richstorysectionresponse = (RichStorySectionResponse)obj;
            return (new EqualsBuilder()).append(id, richstorysectionresponse.id).append(name, richstorysectionresponse.name).append(type, richstorysectionresponse.type).append(properties, richstorysectionresponse.properties).append(channels, richstorysectionresponse.channels).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(id).append(name).append(type).append(properties).append(channels).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
