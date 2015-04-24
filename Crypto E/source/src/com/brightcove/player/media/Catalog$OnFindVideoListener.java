// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.media:
//            VideoListener, Catalog

class videoListener
    implements EventListener
{

    final Catalog this$0;
    private VideoListener videoListener;

    public void processEvent(Event event)
    {
        List list = (List)event.properties.get("errors");
        if (list != null && !list.isEmpty())
        {
            String s;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); videoListener.onError(s))
            {
                s = (String)iterator.next();
            }

        } else
        {
            Video video = (Video)event.properties.get("video");
            videoListener.onVideo(video);
        }
    }

    public (VideoListener videolistener)
    {
        this$0 = Catalog.this;
        super();
        videoListener = videolistener;
    }
}
