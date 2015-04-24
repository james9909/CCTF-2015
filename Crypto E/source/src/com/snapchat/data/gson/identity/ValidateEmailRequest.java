// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.identity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ValidateEmailRequest
{

    private String email;
    private String reqToken;
    private Long timestamp;
    private String username;

    public ValidateEmailRequest()
    {
        timestamp = Long.valueOf(0L);
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
            return (new EqualsBuilder()).append(email, validateemailrequest.email).append(username, validateemailrequest.username).append(reqToken, validateemailrequest.reqToken).append(timestamp, validateemailrequest.timestamp).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(email).append(username).append(reqToken).append(timestamp).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
