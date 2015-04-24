// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson:
//            ConversationMessage, MessageBody

public class ChatMessage extends ConversationMessage
{

    private MessageBody a;
    private String b;
    private Map c;
    private Long d;
    private Long e;
    private Map f;

    public ChatMessage()
    {
        d = Long.valueOf(0L);
        e = Long.valueOf(0L);
        f = new HashMap();
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
            return (new EqualsBuilder()).append(a, chatmessage.a).append(b, chatmessage.b).append(c, chatmessage.c).append(d, chatmessage.d).append(e, chatmessage.e).append(f, chatmessage.f).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
