// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Friend
{

    private String a;
    private Integer b;
    private String c;
    private Long d;
    private String e;
    private Boolean f;
    private Integer g;
    private Long h;
    private Boolean i;
    private Boolean j;
    private String k;
    private Boolean l;
    private Boolean m;
    private Boolean n;
    private String o;
    private String p;
    private Map q;

    public Friend()
    {
        d = Long.valueOf(0L);
        h = Long.valueOf(0L);
        q = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Friend))
        {
            return false;
        } else
        {
            Friend friend = (Friend)obj;
            return (new EqualsBuilder()).append(a, friend.a).append(b, friend.b).append(c, friend.c).append(d, friend.d).append(e, friend.e).append(f, friend.f).append(g, friend.g).append(h, friend.h).append(i, friend.i).append(j, friend.j).append(k, friend.k).append(l, friend.l).append(m, friend.m).append(n, friend.n).append(o, friend.o).append(p, friend.p).append(q, friend.q).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).append(i).append(j).append(k).append(l).append(m).append(n).append(o).append(p).append(q).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
