// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Snap

public class ReceivedSnap extends Snap
{

    private Integer broadcast;
    private String broadcastActionText;
    private Boolean broadcastHideTimer;
    private String broadcastUrl;
    private Long capOri;
    private Double capPos;
    private String capText;
    private String filterId;
    private String sn;
    private Integer t;
    private Double timer;

    public ReceivedSnap()
    {
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
            return (new EqualsBuilder()).append(sn, receivedsnap.sn).append(t, receivedsnap.t).append(timer, receivedsnap.timer).append(capText, receivedsnap.capText).append(capPos, receivedsnap.capPos).append(capOri, receivedsnap.capOri).append(broadcast, receivedsnap.broadcast).append(broadcastUrl, receivedsnap.broadcastUrl).append(broadcastActionText, receivedsnap.broadcastActionText).append(broadcastHideTimer, receivedsnap.broadcastHideTimer).append(filterId, receivedsnap.filterId).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(sn).append(t).append(timer).append(capText).append(capPos).append(capOri).append(broadcast).append(broadcastUrl).append(broadcastActionText).append(broadcastHideTimer).append(filterId).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
