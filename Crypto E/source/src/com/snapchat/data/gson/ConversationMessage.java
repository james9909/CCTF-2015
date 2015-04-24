// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Message, Header

public class ConversationMessage extends Message
{

    private Header header;

    public ConversationMessage()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ConversationMessage))
        {
            return false;
        } else
        {
            ConversationMessage conversationmessage = (ConversationMessage)obj;
            return (new EqualsBuilder()).append(header, conversationmessage.header).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(header).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
