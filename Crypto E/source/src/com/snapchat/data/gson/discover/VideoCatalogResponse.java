// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoCatalogResponse
{

    private String accountId;
    private String name;
    private String videoId;
    private List videoSequence;

    public VideoCatalogResponse()
    {
        videoSequence = new ArrayList();
    }

    public String a()
    {
        return videoId;
    }

    public String b()
    {
        return accountId;
    }

    public String c()
    {
        return name;
    }

    public List d()
    {
        return videoSequence;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof VideoCatalogResponse))
        {
            return false;
        } else
        {
            VideoCatalogResponse videocatalogresponse = (VideoCatalogResponse)obj;
            return (new EqualsBuilder()).append(videoId, videocatalogresponse.videoId).append(accountId, videocatalogresponse.accountId).append(name, videocatalogresponse.name).append(videoSequence, videocatalogresponse.videoSequence).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(videoId).append(accountId).append(name).append(videoSequence).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
