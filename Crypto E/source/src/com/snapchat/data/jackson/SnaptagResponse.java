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
//            Friend

public class SnaptagResponse
{

    private String a;
    private String b;
    private String c;
    private String d;
    private Friend e;
    private String f;
    private Boolean g;
    private Map h;

    public SnaptagResponse()
    {
        h = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SnaptagResponse))
        {
            return false;
        } else
        {
            SnaptagResponse snaptagresponse = (SnaptagResponse)obj;
            return (new EqualsBuilder()).append(a, snaptagresponse.a).append(b, snaptagresponse.b).append(c, snaptagresponse.c).append(d, snaptagresponse.d).append(e, snaptagresponse.e).append(f, snaptagresponse.f).append(g, snaptagresponse.g).append(h, snaptagresponse.h).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).append(e).append(f).append(g).append(h).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
