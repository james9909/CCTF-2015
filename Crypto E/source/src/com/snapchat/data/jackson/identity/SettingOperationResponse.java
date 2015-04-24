// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.identity;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class SettingOperationResponse
{

    private Boolean a;
    private Integer b;
    private String c;
    private String d;
    private Map e;

    public SettingOperationResponse()
    {
        e = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SettingOperationResponse))
        {
            return false;
        } else
        {
            SettingOperationResponse settingoperationresponse = (SettingOperationResponse)obj;
            return (new EqualsBuilder()).append(a, settingoperationresponse.a).append(b, settingoperationresponse.b).append(c, settingoperationresponse.c).append(d, settingoperationresponse.d).append(e, settingoperationresponse.e).isEquals();
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
