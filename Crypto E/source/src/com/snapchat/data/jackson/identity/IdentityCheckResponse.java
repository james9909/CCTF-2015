// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.identity;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class IdentityCheckResponse
{

    private Boolean a;
    private String b;
    private Boolean c;
    private Long d;
    private Map e;

    public IdentityCheckResponse()
    {
        a = Boolean.valueOf(false);
        c = Boolean.valueOf(false);
        d = Long.valueOf(0L);
        e = new HashMap();
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
            return (new EqualsBuilder()).append(a, identitycheckresponse.a).append(b, identitycheckresponse.b).append(c, identitycheckresponse.c).append(d, identitycheckresponse.d).append(e, identitycheckresponse.e).isEquals();
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
