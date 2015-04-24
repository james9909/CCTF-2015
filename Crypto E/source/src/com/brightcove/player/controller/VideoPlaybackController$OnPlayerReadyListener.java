// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        if (!VideoPlaybackController.access$900(VideoPlaybackController.this))
        {
            VideoPlaybackController.access$902(VideoPlaybackController.this, true);
            if (VideoPlaybackController.access$1100(VideoPlaybackController.this).size() > 0)
            {
                Source source;
                Video video;
                for (; VideoPlaybackController.access$1100(VideoPlaybackController.this).size() > 0; EventUtil.emit(VideoPlaybackController.access$1300(VideoPlaybackController.this), "setSource", video, source))
                {
                    source = (Source)VideoPlaybackController.access$1100(VideoPlaybackController.this).remove(0);
                    video = (Video)VideoPlaybackController.access$700(VideoPlaybackController.this).remove(source);
                }

            }
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
