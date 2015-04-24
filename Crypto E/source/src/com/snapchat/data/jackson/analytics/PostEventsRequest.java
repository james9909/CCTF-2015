// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson.analytics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.jackson.analytics:
//            CommonParams

public class PostEventsRequest
{

    private String a;
    private CommonParams b;
    private List c;
    private Map d;

    public PostEventsRequest()
    {
        c = new ArrayList();
        d = new HashMap();
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof PostEventsRequest))
        {
            return false;
        } else
        {
            PostEventsRequest posteventsrequest = (PostEventsRequest)obj;
            return (new EqualsBuilder()).append(a, posteventsrequest.a).append(b, posteventsrequest.b).append(c, posteventsrequest.c).append(d, posteventsrequest.d).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).append(d).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
