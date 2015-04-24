// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson:
//            Media

public class MessageBody
{

    private Media a;
    private String b;
    private String c;
    private List d;
    private Integer e;
    private Map f;

    public MessageBody()
    {
        d = new ArrayList();
        f = new HashMap();
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
            return (new EqualsBuilder()).append(a, messagebody.a).append(b, messagebody.b).append(c, messagebody.c).append(d, messagebody.d).append(e, messagebody.e).append(f, messagebody.f).isEquals();
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
