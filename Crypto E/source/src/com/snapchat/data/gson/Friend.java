// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Friend
{

    private String addSource;
    private String addSourceType;
    private Boolean canSeeCustomStories;
    private String direction;
    private String display;
    private Long expiration;
    private Boolean hasCustomDescription;
    private Boolean hiddenLink;
    private Boolean ignoredLink;
    private Boolean isSharedStory;
    private Boolean localStory;
    private String name;
    private Integer pendingSnapsCount;
    private String sharedStoryId;
    private Long ts;
    private Integer type;

    public Friend()
    {
        ts = Long.valueOf(0L);
        expiration = Long.valueOf(0L);
    }

    public String a()
    {
        return name;
    }

    public Integer b()
    {
        return type;
    }

    public String c()
    {
        return display;
    }

    public Long d()
    {
        return ts;
    }

    public String e()
    {
        return direction;
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
            return (new EqualsBuilder()).append(name, friend.name).append(type, friend.type).append(display, friend.display).append(ts, friend.ts).append(direction, friend.direction).append(canSeeCustomStories, friend.canSeeCustomStories).append(pendingSnapsCount, friend.pendingSnapsCount).append(expiration, friend.expiration).append(isSharedStory, friend.isSharedStory).append(hasCustomDescription, friend.hasCustomDescription).append(sharedStoryId, friend.sharedStoryId).append(localStory, friend.localStory).append(ignoredLink, friend.ignoredLink).append(hiddenLink, friend.hiddenLink).append(addSource, friend.addSource).append(addSourceType, friend.addSourceType).isEquals();
        }
    }

    public Integer f()
    {
        return pendingSnapsCount;
    }

    public Boolean g()
    {
        return isSharedStory;
    }

    public Boolean h()
    {
        return hasCustomDescription;
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(name).append(type).append(display).append(ts).append(direction).append(canSeeCustomStories).append(pendingSnapsCount).append(expiration).append(isSharedStory).append(hasCustomDescription).append(sharedStoryId).append(localStory).append(ignoredLink).append(hiddenLink).append(addSource).append(addSourceType).toHashCode();
    }

    public String i()
    {
        return sharedStoryId;
    }

    public Boolean j()
    {
        return localStory;
    }

    public Boolean k()
    {
        return ignoredLink;
    }

    public Boolean l()
    {
        return hiddenLink;
    }

    public String m()
    {
        return addSource;
    }

    public String n()
    {
        return addSourceType;
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
