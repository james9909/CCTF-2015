// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Snap
{

    private String a;
    private Integer b;
    private Integer c;
    private Long d;
    private Long e;
    private Boolean f;
    private Map g;

    public Snap()
    {
        d = Long.valueOf(0L);
        e = Long.valueOf(0L);
        g = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Snap))
        {
            return false;
        } else
        {
            Snap snap = (Snap)obj;
            return (new EqualsBuilder()).append(a, snap.a).append(b, snap.b).append(c, snap.c).append(d, snap.d).append(e, snap.e).append(f, snap.f).append(g, snap.g).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
