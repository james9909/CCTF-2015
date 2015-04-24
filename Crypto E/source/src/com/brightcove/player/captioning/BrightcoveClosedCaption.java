// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import com.brightcove.player.model.Block;
import java.util.List;

public class BrightcoveClosedCaption extends Block
{

    private String caption;
    private List lines;

    public BrightcoveClosedCaption()
    {
    }

    public BrightcoveClosedCaption(int i, int j, String s)
    {
        beginTime = Integer.valueOf(i);
        endTime = Integer.valueOf(j);
        caption = s;
    }

    public BrightcoveClosedCaption(int i, int j, List list)
    {
        beginTime = Integer.valueOf(i);
        endTime = Integer.valueOf(j);
        lines = list;
    }

    public String getCaption()
    {
        return caption;
    }

    public List getLines()
    {
        return lines;
    }

    public void setLines(List list)
    {
        lines = list;
    }
}
