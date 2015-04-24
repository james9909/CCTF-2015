// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        int i = VideoPlaybackController.access$000(VideoPlaybackController.this);
        VideoPlaybackController.access$002(VideoPlaybackController.this, event.getIntegerProperty("seekPosition"));
        if (i < VideoPlaybackController.access$000(VideoPlaybackController.this))
        {
            VideoPlaybackController.access$1400(VideoPlaybackController.this, i, VideoPlaybackController.access$000(VideoPlaybackController.this));
            return;
        } else
        {
            VideoPlaybackController.access$1400(VideoPlaybackController.this, VideoPlaybackController.access$000(VideoPlaybackController.this), i);
            return;
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
