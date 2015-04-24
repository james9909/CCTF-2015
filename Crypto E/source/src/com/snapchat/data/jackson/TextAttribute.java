// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson:
//            Attribute

public class TextAttribute
{

    private Integer a;
    private Integer b;
    private Attribute c;
    private Map d;

    public TextAttribute()
    {
        d = new HashMap();
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
            return (new EqualsBuilder()).append(a, textattribute.a).append(b, textattribute.b).append(c, textattribute.c).append(d, textattribute.d).isEquals();
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
