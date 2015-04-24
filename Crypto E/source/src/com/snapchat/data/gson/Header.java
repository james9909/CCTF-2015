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
//            SignedPayload

public class Header
{

    private SignedPayload auth;
    private Integer connSeqNum;
    private String convId;
    private String from;
    private List to;

    public Header()
    {
        to = new ArrayList();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Header))
        {
            return false;
        } else
        {
            Header header = (Header)obj;
            return (new EqualsBuilder()).append(from, header.from).append(to, header.to).append(convId, header.convId).append(auth, header.auth).append(connSeqNum, header.connSeqNum).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(from).append(to).append(convId).append(auth).append(connSeqNum).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
