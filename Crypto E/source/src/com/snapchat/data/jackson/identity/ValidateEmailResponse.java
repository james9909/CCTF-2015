// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.identity;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ValidateEmailResponse
{

    private Boolean a;
    private String b;
    private Map c;

    public ValidateEmailResponse()
    {
        c = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ValidateEmailResponse))
        {
            return false;
        } else
        {
            ValidateEmailResponse validateemailresponse = (ValidateEmailResponse)obj;
            return (new EqualsBuilder()).append(a, validateemailresponse.a).append(b, validateemailresponse.b).append(c, validateemailresponse.c).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
