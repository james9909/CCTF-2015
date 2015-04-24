// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.rich_story;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson.rich_story:
//            RichStoryItemPropertiesResponse

public class RichStoryItemResponse
{

    private String id;
    private String name;
    private RichStoryItemPropertiesResponse properties;
    private String type;

    public RichStoryItemResponse()
    {
    }

    public String a()
    {
        return type;
    }

    public RichStoryItemPropertiesResponse b()
    {
        return properties;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStoryItemResponse))
        {
            return false;
        } else
        {
            RichStoryItemResponse richstoryitemresponse = (RichStoryItemResponse)obj;
            return (new EqualsBuilder()).append(id, richstoryitemresponse.id).append(name, richstoryitemresponse.name).append(type, richstoryitemresponse.type).append(properties, richstoryitemresponse.properties).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(id).append(name).append(type).append(properties).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
