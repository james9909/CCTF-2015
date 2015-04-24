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

public class ReceivedSnap extends Snap
{

    private String a;
    private Integer b;
    private Double c;
    private String d;
    private Double e;
    private Long f;
    private Integer g;
    private String h;
    private String i;
    private Boolean j;
    private String k;
    private Map l;

    public ReceivedSnap()
    {
        l = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ReceivedSnap))
        {
            return false;
        } else
        {
            ReceivedSnap receivedsnap = (ReceivedSnap)obj;
            return (new EqualsBuilder()).append(a, receivedsnap.a).append(b, receivedsnap.b).append(c, receivedsnap.c).append(d, receivedsnap.d).append(e, receivedsnap.e).append(f, receivedsnap.f).append(g, receivedsnap.g).append(h, receivedsnap.h).append(i, receivedsnap.i).append(j, receivedsnap.j).append(k, receivedsnap.k).append(l, receivedsnap.l).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).append(j).append(k).append(l).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
