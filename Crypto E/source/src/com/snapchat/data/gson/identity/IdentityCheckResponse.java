// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.identity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class IdentityCheckResponse
{

    private String emailPendingVerification;
    private Boolean isEmailVerified;
    private Long redGearDurationMillis;
    private Boolean requirePhonePasswordConfirmed;

    public IdentityCheckResponse()
    {
        isEmailVerified = Boolean.valueOf(false);
        requirePhonePasswordConfirmed = Boolean.valueOf(false);
        redGearDurationMillis = Long.valueOf(0L);
    }

    public Boolean a()
    {
        return isEmailVerified;
    }

    public String b()
    {
        return emailPendingVerification;
    }

    public Boolean c()
    {
        return requirePhonePasswordConfirmed;
    }

    public Long d()
    {
        return redGearDurationMillis;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof IdentityCheckResponse))
        {
            return false;
        } else
        {
            IdentityCheckResponse identitycheckresponse = (IdentityCheckResponse)obj;
            return (new EqualsBuilder()).append(isEmailVerified, identitycheckresponse.isEmailVerified).append(emailPendingVerification, identitycheckresponse.emailPendingVerification).append(requirePhonePasswordConfirmed, identitycheckresponse.requirePhonePasswordConfirmed).append(redGearDurationMillis, identitycheckresponse.redGearDurationMillis).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(isEmailVerified).append(emailPendingVerification).append(requirePhonePasswordConfirmed).append(redGearDurationMillis).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
