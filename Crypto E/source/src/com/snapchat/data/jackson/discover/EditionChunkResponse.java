// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.discover;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class EditionChunkResponse
{

    private String a;
    private String b;
    private String c;
    private String d;
    private Integer e;
    private Map f;

    public EditionChunkResponse()
    {
        f = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof EditionChunkResponse))
        {
            return false;
        } else
        {
            EditionChunkResponse editionchunkresponse = (EditionChunkResponse)obj;
            return (new EqualsBuilder()).append(a, editionchunkresponse.a).append(b, editionchunkresponse.b).append(c, editionchunkresponse.c).append(d, editionchunkresponse.d).append(e, editionchunkresponse.e).append(f, editionchunkresponse.f).isEquals();
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
