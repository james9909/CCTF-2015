// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson.discover;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ChannelResponse
{

    private List dsnapsData;
    private String editionId;
    private String filledIcon;
    private String introMovie;
    private String invertedIcon;
    private String loadingIcon;
    private String name;
    private String primaryColor;
    private String secondaryColor;

    public ChannelResponse()
    {
        dsnapsData = new ArrayList();
    }

    public String a()
    {
        return name;
    }

    public String b()
    {
        return filledIcon;
    }

    public String c()
    {
        return invertedIcon;
    }

    public String d()
    {
        return loadingIcon;
    }

    public String e()
    {
        return introMovie;
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof ChannelResponse))
        {
            return false;
        } else
        {
            ChannelResponse channelresponse = (ChannelResponse)obj;
            return (new EqualsBuilder()).append(name, channelresponse.name).append(filledIcon, channelresponse.filledIcon).append(invertedIcon, channelresponse.invertedIcon).append(loadingIcon, channelresponse.loadingIcon).append(introMovie, channelresponse.introMovie).append(primaryColor, channelresponse.primaryColor).append(secondaryColor, channelresponse.secondaryColor).append(editionId, channelresponse.editionId).append(dsnapsData, channelresponse.dsnapsData).isEquals();
        }
    }

    public String f()
    {
        return primaryColor;
    }

    public String g()
    {
        return secondaryColor;
    }

    public String h()
    {
        return editionId;
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(name).append(filledIcon).append(invertedIcon).append(loadingIcon).append(introMovie).append(primaryColor).append(secondaryColor).append(editionId).append(dsnapsData).toHashCode();
    }

    public List i()
    {
        return dsnapsData;
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
