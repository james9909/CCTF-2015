// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.identity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ValidateEmailResponse
{

    private String errorMessage;
    private Boolean isValid;

    public ValidateEmailResponse()
    {
    }

    public ValidateEmailResponse a(Boolean boolean1)
    {
        isValid = boolean1;
        return this;
    }

    public ValidateEmailResponse a(String s)
    {
        errorMessage = s;
        return this;
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
            return (new EqualsBuilder()).append(isValid, validateemailresponse.isValid).append(errorMessage, validateemailresponse.errorMessage).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(isValid).append(errorMessage).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
