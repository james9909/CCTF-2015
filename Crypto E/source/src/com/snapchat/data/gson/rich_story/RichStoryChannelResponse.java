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

public class RichStoryChannelResponse
{

    private String id;
    private List items;
    private String name;
    private Map properties;
    private String type;

    public RichStoryChannelResponse()
    {
        items = new ArrayList();
    }

    public String a()
    {
        return type;
    }

    public Map b()
    {
        return properties;
    }

    public List c()
    {
        return items;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStoryChannelResponse))
        {
            return false;
        } else
        {
            RichStoryChannelResponse richstorychannelresponse = (RichStoryChannelResponse)obj;
            return (new EqualsBuilder()).append(id, richstorychannelresponse.id).append(name, richstorychannelresponse.name).append(type, richstorychannelresponse.type).append(properties, richstorychannelresponse.properties).append(items, richstorychannelresponse.items).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(id).append(name).append(type).append(properties).append(items).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
