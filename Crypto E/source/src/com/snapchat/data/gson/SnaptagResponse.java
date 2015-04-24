// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Friend

public class SnaptagResponse
{

    private String action;
    private String fallbackMessage;
    private String friendActionStatus;
    private Boolean logged;
    private String message;
    private Friend object;
    private String username;

    public SnaptagResponse()
    {
    }

    public String a()
    {
        return action;
    }

    public String b()
    {
        return message;
    }

    public String c()
    {
        return fallbackMessage;
    }

    public Friend d()
    {
        return object;
    }

    public String e()
    {
        return friendActionStatus;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SnaptagResponse))
        {
            return false;
        } else
        {
            SnaptagResponse snaptagresponse = (SnaptagResponse)obj;
            return (new EqualsBuilder()).append(action, snaptagresponse.action).append(message, snaptagresponse.message).append(fallbackMessage, snaptagresponse.fallbackMessage).append(username, snaptagresponse.username).append(object, snaptagresponse.object).append(friendActionStatus, snaptagresponse.friendActionStatus).append(logged, snaptagresponse.logged).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(action).append(message).append(fallbackMessage).append(username).append(object).append(friendActionStatus).append(logged).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
