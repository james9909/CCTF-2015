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

public class GenericSnap extends Snap
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
    private String j;
    private Boolean k;
    private String l;
    private String m;
    private String n;
    private Boolean o;
    private Boolean p;
    private Integer q;
    private Map r;

    public GenericSnap()
    {
        r = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof GenericSnap))
        {
            return false;
        } else
        {
            GenericSnap genericsnap = (GenericSnap)obj;
            return (new EqualsBuilder()).append(a, genericsnap.a).append(b, genericsnap.b).append(c, genericsnap.c).append(d, genericsnap.d).append(e, genericsnap.e).append(f, genericsnap.f).append(g, genericsnap.g).append(h, genericsnap.h).append(i, genericsnap.i).append(j, genericsnap.j).append(k, genericsnap.k).append(l, genericsnap.l).append(m, genericsnap.m).append(n, genericsnap.n).append(o, genericsnap.o).append(p, genericsnap.p).append(q, genericsnap.q).append(r, genericsnap.r).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).append(j).append(k).append(l).append(m).append(n).append(o).append(p).append(q).append(r).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
