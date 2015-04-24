// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class EditionChunkResponse
{

    private Integer adType;
    private String color;
    private String dsnapId;
    private String hash;
    private String url;

    public EditionChunkResponse()
    {
    }

    public String a()
    {
        return url;
    }

    public String b()
    {
        return dsnapId;
    }

    public String c()
    {
        return hash;
    }

    public String d()
    {
        return color;
    }

    public Integer e()
    {
        return adType;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof EditionChunkResponse))
        {
            return false;
        } else
        {
            EditionChunkResponse editionchunkresponse = (EditionChunkResponse)obj;
            return (new EqualsBuilder()).append(url, editionchunkresponse.url).append(dsnapId, editionchunkresponse.dsnapId).append(hash, editionchunkresponse.hash).append(color, editionchunkresponse.color).append(adType, editionchunkresponse.adType).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(url).append(dsnapId).append(hash).append(color).append(adType).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
