// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.discover;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ChannelResponse
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private List i;
    private Map j;

    public ChannelResponse()
    {
        i = new ArrayList();
        j = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ChannelResponse))
        {
            return false;
        } else
        {
            ChannelResponse channelresponse = (ChannelResponse)obj;
            return (new EqualsBuilder()).append(a, channelresponse.a).append(b, channelresponse.b).append(c, channelresponse.c).append(d, channelresponse.d).append(e, channelresponse.e).append(f, channelresponse.f).append(g, channelresponse.g).append(h, channelresponse.h).append(i, channelresponse.i).append(j, channelresponse.j).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).append(j).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
