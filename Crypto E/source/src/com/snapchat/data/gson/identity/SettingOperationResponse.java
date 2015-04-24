// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.identity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class SettingOperationResponse
{

    private Boolean logged;
    private String message;
    private String param;
    private Integer status;

    public SettingOperationResponse()
    {
    }

    public SettingOperationResponse a(Boolean boolean1)
    {
        logged = boolean1;
        return this;
    }

    public SettingOperationResponse a(String s)
    {
        message = s;
        return this;
    }

    public Boolean a()
    {
        return logged;
    }

    public String b()
    {
        return message;
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
            return (new EqualsBuilder()).append(logged, settingoperationresponse.logged).append(status, settingoperationresponse.status).append(message, settingoperationresponse.message).append(param, settingoperationresponse.param).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(logged).append(status).append(message).append(param).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
