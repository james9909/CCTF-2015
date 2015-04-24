// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class SavedState
{

    private Boolean saved;
    private Integer version;

    public SavedState()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof SavedState))
        {
            return false;
        } else
        {
            SavedState savedstate = (SavedState)obj;
            return (new EqualsBuilder()).append(saved, savedstate.saved).append(version, savedstate.version).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(saved).append(version).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
