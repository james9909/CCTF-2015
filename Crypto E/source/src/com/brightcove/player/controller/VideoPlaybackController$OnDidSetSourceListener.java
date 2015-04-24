// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        Video video = (Video)event.properties.get("video");
        Source source = (Source)event.properties.get("source");
        if (video != null && source != null)
        {
            EventUtil.emit(VideoPlaybackController.access$1200(VideoPlaybackController.this), "didSetVideo", video);
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
