// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.rich_story;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson.rich_story:
//            RichStoryItemPropertiesResponse

public class RichStoryItemResponse
{

    private String a;
    private String b;
    private String c;
    private RichStoryItemPropertiesResponse d;
    private Map e;

    public RichStoryItemResponse()
    {
        e = new HashMap();
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
            return (new EqualsBuilder()).append(a, richstoryitemresponse.a).append(b, richstoryitemresponse.b).append(c, richstoryitemresponse.c).append(d, richstoryitemresponse.d).append(e, richstoryitemresponse.e).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
