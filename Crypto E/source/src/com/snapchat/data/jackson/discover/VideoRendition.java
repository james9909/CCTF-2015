// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.discover;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoRendition
{

    private Integer a;
    private Integer b;
    private Integer c;
    private Integer d;
    private Integer e;
    private String f;
    private String g;
    private String h;
    private Map i;

    public VideoRendition()
    {
        i = new HashMap();
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
            return (new EqualsBuilder()).append(a, videorendition.a).append(b, videorendition.b).append(c, videorendition.c).append(d, videorendition.d).append(e, videorendition.e).append(f, videorendition.f).append(g, videorendition.g).append(h, videorendition.h).append(i, videorendition.i).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
