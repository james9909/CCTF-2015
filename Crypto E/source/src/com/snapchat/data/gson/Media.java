// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Media
{

    private Integer height;
    private String iv;
    private String key;
    private String mediaId;
    private Integer width;

    public Media()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Media))
        {
            return false;
        } else
        {
            Media media = (Media)obj;
            return (new EqualsBuilder()).append(mediaId, media.mediaId).append(key, media.key).append(iv, media.iv).append(width, media.width).append(height, media.height).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(mediaId).append(key).append(iv).append(width).append(height).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
