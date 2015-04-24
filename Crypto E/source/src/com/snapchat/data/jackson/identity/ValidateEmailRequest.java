// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.identity;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ValidateEmailRequest
{

    private String a;
    private String b;
    private String c;
    private Long d;
    private Map e;

    public ValidateEmailRequest()
    {
        d = Long.valueOf(0L);
        e = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ValidateEmailRequest))
        {
            return false;
        } else
        {
            ValidateEmailRequest validateemailrequest = (ValidateEmailRequest)obj;
            return (new EqualsBuilder()).append(a, validateemailrequest.a).append(b, validateemailrequest.b).append(c, validateemailrequest.c).append(d, validateemailrequest.d).append(e, validateemailrequest.e).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
