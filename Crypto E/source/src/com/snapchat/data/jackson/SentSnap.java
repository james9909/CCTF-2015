// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson:
//            Snap

public class SentSnap extends Snap
{

    private String a;
    private String b;
    private Boolean c;
    private Boolean d;
    private Integer e;
    private Map f;

    public SentSnap()
    {
        f = new HashMap();
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
            return (new EqualsBuilder()).append(a, sentsnap.a).append(b, sentsnap.b).append(c, sentsnap.c).append(d, sentsnap.d).append(e, sentsnap.e).append(f, sentsnap.f).isEquals();
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
