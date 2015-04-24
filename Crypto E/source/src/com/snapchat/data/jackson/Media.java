// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Media
{

    private String a;
    private String b;
    private String c;
    private Integer d;
    private Integer e;
    private Map f;

    public Media()
    {
        f = new HashMap();
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
            return (new EqualsBuilder()).append(a, media.a).append(b, media.b).append(c, media.c).append(d, media.d).append(e, media.e).append(f, media.f).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
