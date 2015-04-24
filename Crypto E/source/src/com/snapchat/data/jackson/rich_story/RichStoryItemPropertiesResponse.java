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

public class RichStoryItemPropertiesResponse
{

    private String a;
    private List b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private Map j;

    public RichStoryItemPropertiesResponse()
    {
        b = new ArrayList();
        j = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStoryItemPropertiesResponse))
        {
            return false;
        } else
        {
            RichStoryItemPropertiesResponse richstoryitempropertiesresponse = (RichStoryItemPropertiesResponse)obj;
            return (new EqualsBuilder()).append(a, richstoryitempropertiesresponse.a).append(b, richstoryitempropertiesresponse.b).append(c, richstoryitempropertiesresponse.c).append(d, richstoryitempropertiesresponse.d).append(e, richstoryitempropertiesresponse.e).append(f, richstoryitempropertiesresponse.f).append(g, richstoryitempropertiesresponse.g).append(h, richstoryitempropertiesresponse.h).append(i, richstoryitempropertiesresponse.i).append(j, richstoryitempropertiesresponse.j).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).append(j).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
