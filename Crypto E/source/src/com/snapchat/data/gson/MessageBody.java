// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Media

public class MessageBody
{

    private List attributes;
    private Media media;
    private Integer obfuscation;
    private String text;
    private String type;

    public MessageBody()
    {
        attributes = new ArrayList();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof MessageBody))
        {
            return false;
        } else
        {
            MessageBody messagebody = (MessageBody)obj;
            return (new EqualsBuilder()).append(media, messagebody.media).append(type, messagebody.type).append(text, messagebody.text).append(attributes, messagebody.attributes).append(obfuscation, messagebody.obfuscation).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(media).append(type).append(text).append(attributes).append(obfuscation).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
