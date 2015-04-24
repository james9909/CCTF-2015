// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import java.io.Serializable;
import java.util.List;

public class WebVTTDocument
    implements Serializable
{

    private List captions;

    public WebVTTDocument(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("must provide collections for captions");
        } else
        {
            captions = list;
            return;
        }
    }

    public List getCaptions()
    {
        return captions;
    }
}
