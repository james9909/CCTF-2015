// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.analytics;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson.analytics:
//            CommonParams

public class PostEventsRequest
{

    private String batchId;
    private CommonParams commonParams;
    private List events;

    public PostEventsRequest()
    {
        events = new ArrayList();
    }

    public PostEventsRequest a(CommonParams commonparams)
    {
        commonParams = commonparams;
        return this;
    }

    public PostEventsRequest a(String s)
    {
        batchId = s;
        return this;
    }

    public PostEventsRequest a(List list)
    {
        events = list;
        return this;
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
            return (new EqualsBuilder()).append(batchId, posteventsrequest.batchId).append(commonParams, posteventsrequest.commonParams).append(events, posteventsrequest.events).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(batchId).append(commonParams).append(events).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
