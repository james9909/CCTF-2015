// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.analytics;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class CommonParams
{

    private String a;
    private String b;
    private Integer c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private Map i;

    public CommonParams()
    {
        a = "Unimplemented";
        b = "Unimplemented";
        d = "Unimplemented";
        e = "Unimplemented";
        h = "00000000-0000-0000-0000-000000000000";
        i = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof CommonParams))
        {
            return false;
        } else
        {
            CommonParams commonparams = (CommonParams)obj;
            return (new EqualsBuilder()).append(a, commonparams.a).append(b, commonparams.b).append(c, commonparams.c).append(d, commonparams.d).append(e, commonparams.e).append(f, commonparams.f).append(g, commonparams.g).append(h, commonparams.h).append(i, commonparams.i).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
