// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.discover;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoCatalogResponse
{

    private String a;
    private String b;
    private String c;
    private List d;
    private Map e;

    public VideoCatalogResponse()
    {
        d = new ArrayList();
        e = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof VideoCatalogResponse))
        {
            return false;
        } else
        {
            VideoCatalogResponse videocatalogresponse = (VideoCatalogResponse)obj;
            return (new EqualsBuilder()).append(a, videocatalogresponse.a).append(b, videocatalogresponse.b).append(c, videocatalogresponse.c).append(d, videocatalogresponse.d).append(e, videocatalogresponse.e).isEquals();
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
