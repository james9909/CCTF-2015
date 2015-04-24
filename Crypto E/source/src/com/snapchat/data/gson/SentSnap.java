// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Snap

public class SentSnap extends Snap
{

    private Integer c;
    private String cId;
    private Boolean pending;
    private Boolean replayed;
    private String rp;

    public SentSnap()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SentSnap))
        {
            return false;
        } else
        {
            SentSnap sentsnap = (SentSnap)obj;
            return (new EqualsBuilder()).append(rp, sentsnap.rp).append(cId, sentsnap.cId).append(replayed, sentsnap.replayed).append(pending, sentsnap.pending).append(c, sentsnap.c).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(rp).append(cId).append(replayed).append(pending).append(c).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
