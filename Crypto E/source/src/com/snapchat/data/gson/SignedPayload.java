// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class SignedPayload
{

    private String mac;
    private String payload;

    public SignedPayload()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SignedPayload))
        {
            return false;
        } else
        {
            SignedPayload signedpayload = (SignedPayload)obj;
            return (new EqualsBuilder()).append(payload, signedpayload.payload).append(mac, signedpayload.mac).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(payload).append(mac).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
