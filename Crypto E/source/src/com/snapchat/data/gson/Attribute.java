// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Attribute
{

    private String androidHref;
    private String href;
    private String iosHref;
    private String type;

    public Attribute()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Attribute))
        {
            return false;
        } else
        {
            Attribute attribute = (Attribute)obj;
            return (new EqualsBuilder()).append(type, attribute.type).append(iosHref, attribute.iosHref).append(androidHref, attribute.androidHref).append(href, attribute.href).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(type).append(iosHref).append(androidHref).append(href).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
