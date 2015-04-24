// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.rich_story;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class RichStorySectionResponse
{

    private String a;
    private String b;
    private String c;
    private Map d;
    private List e;
    private Map f;

    public RichStorySectionResponse()
    {
        e = new ArrayList();
        f = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStorySectionResponse))
        {
            return false;
        } else
        {
            RichStorySectionResponse richstorysectionresponse = (RichStorySectionResponse)obj;
            return (new EqualsBuilder()).append(a, richstorysectionresponse.a).append(b, richstorysectionresponse.b).append(c, richstorysectionresponse.c).append(d, richstorysectionresponse.d).append(e, richstorysectionresponse.e).append(f, richstorysectionresponse.f).isEquals();
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
