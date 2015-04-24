// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Snap
{

    private String id;
    private Integer m;
    private Integer st;
    private Long sts;
    private Long ts;
    private Boolean zipped;

    public Snap()
    {
        ts = Long.valueOf(0L);
        sts = Long.valueOf(0L);
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
            return (new EqualsBuilder()).append(id, snap.id).append(st, snap.st).append(m, snap.m).append(ts, snap.ts).append(sts, snap.sts).append(zipped, snap.zipped).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(id).append(st).append(m).append(ts).append(sts).append(zipped).toHashCode();
    }

    public String q()
    {
        return id;
    }

    public Integer r()
    {
        return st;
    }

    public Integer s()
    {
        return m;
    }

    public Long t()
    {
        return ts;
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }

    public Long u()
    {
        return sts;
    }

    public Boolean v()
    {
        return zipped;
    }
}
