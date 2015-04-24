// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Attribute

public class TextAttribute
{

    private Attribute attribute;
    private Integer end;
    private Integer start;

    public TextAttribute()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof TextAttribute))
        {
            return false;
        } else
        {
            TextAttribute textattribute = (TextAttribute)obj;
            return (new EqualsBuilder()).append(start, textattribute.start).append(end, textattribute.end).append(attribute, textattribute.attribute).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(start).append(end).append(attribute).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
