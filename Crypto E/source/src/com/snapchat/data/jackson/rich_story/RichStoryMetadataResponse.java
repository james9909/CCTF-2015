// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.rich_story;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class RichStoryMetadataResponse
{

    private List a;
    private Map b;

    public RichStoryMetadataResponse()
    {
        a = new ArrayList();
        b = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStoryMetadataResponse))
        {
            return false;
        } else
        {
            RichStoryMetadataResponse richstorymetadataresponse = (RichStoryMetadataResponse)obj;
            return (new EqualsBuilder()).append(a, richstorymetadataresponse.a).append(b, richstorymetadataresponse.b).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
