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

public class VideoSequenceItem
{

    private String a;
    private String b;
    private List c;
    private Map d;

    public VideoSequenceItem()
    {
        c = new ArrayList();
        d = new HashMap();
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
            return (new EqualsBuilder()).append(a, videosequenceitem.a).append(b, videosequenceitem.b).append(c, videosequenceitem.c).append(d, videosequenceitem.d).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
