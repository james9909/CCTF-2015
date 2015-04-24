// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.rich_story;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class RichStoryItemPropertiesResponse
{

    private String background;
    private String backgroundType;
    private String docking;
    private String file;
    private List images;
    private String mode;
    private String overlay;
    private String sponsoredOverlay;
    private String videoId;

    public RichStoryItemPropertiesResponse()
    {
        images = new ArrayList();
    }

    public String a()
    {
        return file;
    }

    public String b()
    {
        return background;
    }

    public String c()
    {
        return backgroundType;
    }

    public String d()
    {
        return overlay;
    }

    public String e()
    {
        return videoId;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof RichStoryItemPropertiesResponse))
        {
            return false;
        } else
        {
            RichStoryItemPropertiesResponse richstoryitempropertiesresponse = (RichStoryItemPropertiesResponse)obj;
            return (new EqualsBuilder()).append(file, richstoryitempropertiesresponse.file).append(images, richstoryitempropertiesresponse.images).append(background, richstoryitempropertiesresponse.background).append(backgroundType, richstoryitempropertiesresponse.backgroundType).append(overlay, richstoryitempropertiesresponse.overlay).append(videoId, richstoryitempropertiesresponse.videoId).append(mode, richstoryitempropertiesresponse.mode).append(docking, richstoryitempropertiesresponse.docking).append(sponsoredOverlay, richstoryitempropertiesresponse.sponsoredOverlay).isEquals();
        }
    }

    public String f()
    {
        return mode;
    }

    public String g()
    {
        return docking;
    }

    public String h()
    {
        return sponsoredOverlay;
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(file).append(images).append(background).append(backgroundType).append(overlay).append(videoId).append(mode).append(docking).append(sponsoredOverlay).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
