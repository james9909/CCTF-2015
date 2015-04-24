// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoRendition
{

    private Integer bitrate;
    private String codec;
    private String container;
    private Integer duration;
    private Integer height;
    private Integer size;
    private String url;
    private Integer width;

    public VideoRendition()
    {
    }

    public Integer a()
    {
        return bitrate;
    }

    public Integer b()
    {
        return height;
    }

    public Integer c()
    {
        return width;
    }

    public Integer d()
    {
        return duration;
    }

    public String e()
    {
        return url;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof VideoRendition))
        {
            return false;
        } else
        {
            VideoRendition videorendition = (VideoRendition)obj;
            return (new EqualsBuilder()).append(bitrate, videorendition.bitrate).append(height, videorendition.height).append(width, videorendition.width).append(size, videorendition.size).append(duration, videorendition.duration).append(url, videorendition.url).append(codec, videorendition.codec).append(container, videorendition.container).isEquals();
        }
    }

    public String f()
    {
        return container;
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(bitrate).append(height).append(width).append(size).append(duration).append(url).append(codec).append(container).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
