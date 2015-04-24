// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class VideoCatalogListResponse
{

    private List results;

    public VideoCatalogListResponse()
    {
        results = new ArrayList();
    }

    public List a()
    {
        return results;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof VideoCatalogListResponse))
        {
            return false;
        } else
        {
            VideoCatalogListResponse videocataloglistresponse = (VideoCatalogListResponse)obj;
            return (new EqualsBuilder()).append(results, videocataloglistresponse.results).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(results).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
