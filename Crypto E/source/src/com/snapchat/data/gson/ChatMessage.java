// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            ConversationMessage, MessageBody

public class ChatMessage extends ConversationMessage
{

    private MessageBody body;
    private String chatMessageId;
    private Map savedState;
    private Long seqNum;
    private Long timestamp;

    public ChatMessage()
    {
        seqNum = Long.valueOf(0L);
        timestamp = Long.valueOf(0L);
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ChatMessage))
        {
            return false;
        } else
        {
            ChatMessage chatmessage = (ChatMessage)obj;
            return (new EqualsBuilder()).append(body, chatmessage.body).append(chatMessageId, chatmessage.chatMessageId).append(savedState, chatmessage.savedState).append(seqNum, chatmessage.seqNum).append(timestamp, chatmessage.timestamp).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(body).append(chatMessageId).append(savedState).append(seqNum).append(timestamp).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
