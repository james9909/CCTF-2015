// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.edge;

import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.EventEmitter;
import java.util.Map;

// Referenced classes of package com.brightcove.player.edge:
//            GetVideoTask, VideoListener

public class Catalog extends AbstractComponent
{

    public static final String DEFAULT_EDGE_BASE_URL = "https://edge.api.brightcove.com/v1/";
    private String account;
    private String baseURL;
    private String policy;

    public Catalog(EventEmitter eventemitter, String s, String s1)
    {
        this(eventemitter, s, s1, "https://edge.api.brightcove.com/v1/");
    }

    public Catalog(EventEmitter eventemitter, String s, String s1, String s2)
    {
        super(eventemitter, com/brightcove/player/edge/Catalog);
        account = s;
        policy = s1;
        baseURL = s2;
    }

    public void findVideoByID(String s, VideoListener videolistener)
    {
        findVideoByID(s, null, videolistener);
    }

    public void findVideoByID(String s, Map map, VideoListener videolistener)
    {
        (new GetVideoTask(eventEmitter, baseURL, map, account, policy)).getById(s, videolistener);
    }

    public void findVideoByReferenceID(String s, VideoListener videolistener)
    {
        findVideoByReferenceID(s, null, videolistener);
    }

    public void findVideoByReferenceID(String s, Map map, VideoListener videolistener)
    {
        (new GetVideoTask(eventEmitter, baseURL, map, account, policy)).getByReferenceId(s, videolistener);
    }
}
