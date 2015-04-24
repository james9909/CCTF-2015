// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

// Referenced classes of package com.snapchat.data.gson:
//            Snap

public class GenericSnap extends Snap
{

    private Integer broadcast;
    private String broadcastActionText;
    private Boolean broadcastHideTimer;
    private String broadcastMediaUrl;
    private String broadcastUrl;
    private Integer c;
    private String cId;
    private Long capOri;
    private Double capPos;
    private String capText;
    private String filterId;
    private Boolean pending;
    private Boolean replayed;
    private String rp;
    private String sn;
    private Integer t;
    private Double timer;

    public GenericSnap()
    {
    }

    public String a()
    {
        return sn;
    }

    public Integer b()
    {
        return t;
    }

    public Double c()
    {
        return timer;
    }

    public String d()
    {
        return capText;
    }

    public Double e()
    {
        return capPos;
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
            return (new EqualsBuilder()).append(sn, genericsnap.sn).append(t, genericsnap.t).append(timer, genericsnap.timer).append(capText, genericsnap.capText).append(capPos, genericsnap.capPos).append(capOri, genericsnap.capOri).append(broadcast, genericsnap.broadcast).append(broadcastMediaUrl, genericsnap.broadcastMediaUrl).append(broadcastUrl, genericsnap.broadcastUrl).append(broadcastActionText, genericsnap.broadcastActionText).append(broadcastHideTimer, genericsnap.broadcastHideTimer).append(filterId, genericsnap.filterId).append(rp, genericsnap.rp).append(cId, genericsnap.cId).append(replayed, genericsnap.replayed).append(pending, genericsnap.pending).append(c, genericsnap.c).isEquals();
        }
    }

    public Long f()
    {
        return capOri;
    }

    public Integer g()
    {
        return broadcast;
    }

    public String h()
    {
        return broadcastMediaUrl;
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(sn).append(t).append(timer).append(capText).append(capPos).append(capOri).append(broadcast).append(broadcastMediaUrl).append(broadcastUrl).append(broadcastActionText).append(broadcastHideTimer).append(filterId).append(rp).append(cId).append(replayed).append(pending).append(c).toHashCode();
    }

    public String i()
    {
        return broadcastUrl;
    }

    public String j()
    {
        return broadcastActionText;
    }

    public Boolean k()
    {
        return broadcastHideTimer;
    }

    public String l()
    {
        return filterId;
    }

    public String m()
    {
        return rp;
    }

    public String n()
    {
        return cId;
    }

    public Boolean o()
    {
        return replayed;
    }

    public Boolean p()
    {
        return pending;
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
