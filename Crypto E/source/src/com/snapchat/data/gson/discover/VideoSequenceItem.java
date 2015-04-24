// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoSequenceItem
{

    private List renditions;
    private String type;
    private String url;

    public VideoSequenceItem()
    {
        renditions = new ArrayList();
    }

    public String a()
    {
        return type;
    }

    public String b()
    {
        return url;
    }

    public List c()
    {
        return renditions;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof VideoSequenceItem))
        {
            return false;
        } else
        {
            VideoSequenceItem videosequenceitem = (VideoSequenceItem)obj;
            return (new EqualsBuilder()).append(type, videosequenceitem.type).append(url, videosequenceitem.url).append(renditions, videosequenceitem.renditions).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(type).append(url).append(renditions).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
