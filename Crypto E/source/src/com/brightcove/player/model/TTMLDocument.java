// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.model:
//            Block

public class TTMLDocument
    implements Serializable
{

    private Block body;
    private List captions;
    private Map regions;
    private Map styles;

    public TTMLDocument(Map map, Map map1, Block block, List list)
    {
        if (map == null || map1 == null || block == null || list == null)
        {
            throw new IllegalArgumentException("must provide collections for regions, styles, body and captions");
        } else
        {
            regions = map;
            styles = map1;
            body = block;
            captions = list;
            return;
        }
    }

    public Block getBody()
    {
        return body;
    }

    public List getCaptions()
    {
        return captions;
    }

    public Map getRegions()
    {
        return regions;
    }

    public Map getStyles()
    {
        return styles;
    }
}
