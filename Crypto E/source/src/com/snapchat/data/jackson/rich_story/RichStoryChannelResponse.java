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

public class RichStoryChannelResponse
{

    private String a;
    private String b;
    private String c;
    private Map d;
    private List e;
    private Map f;

    public RichStoryChannelResponse()
    {
        e = new ArrayList();
        f = new HashMap();
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
            return (new EqualsBuilder()).append(a, richstorychannelresponse.a).append(b, richstorychannelresponse.b).append(c, richstorychannelresponse.c).append(d, richstorychannelresponse.d).append(e, richstorychannelresponse.e).append(f, richstorychannelresponse.f).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
