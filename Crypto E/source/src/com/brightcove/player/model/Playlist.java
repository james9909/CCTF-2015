// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.model:
//            MetadataObject

public class Playlist extends MetadataObject
{
    public static final class Fields
    {

        public static final String NAME = "name";
        public static final String SHORT_DESCRIPTION = "shortDescription";

        public Fields()
        {
        }
    }


    private List videos;

    public Playlist(Map map)
    {
        super(map);
    }

    public Playlist(Map map, List list)
    {
        super(map);
        if (list == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("videosRequired"));
        } else
        {
            videos = list;
            return;
        }
    }

    public Integer getCount()
    {
        return Integer.valueOf(videos.size());
    }

    public List getVideos()
    {
        return videos;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Playlist{");
        if (properties.get("name") != null)
        {
            stringbuilder.append("name: ");
            stringbuilder.append(properties.get("name"));
        }
        if (properties.get("shortDescription") != null)
        {
            stringbuilder.append(" shortDescription: ");
            stringbuilder.append(properties.get("shortDescription"));
        }
        stringbuilder.append(" videos: ");
        int i;
        if (videos != null)
        {
            i = videos.size();
        } else
        {
            i = 0;
        }
        stringbuilder.append(i);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
