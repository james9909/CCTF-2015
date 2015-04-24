// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

class <init>
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        int i = event.getIntegerProperty("playheadPosition");
        if (VideoPlaybackController.access$000(VideoPlaybackController.this) != -1 && VideoPlaybackController.access$000(VideoPlaybackController.this) < i)
        {
            int j = VideoPlaybackController.access$000(VideoPlaybackController.this);
            VideoPlaybackController.access$002(VideoPlaybackController.this, i);
            VideoPlaybackController.access$1400(VideoPlaybackController.this, j, VideoPlaybackController.access$000(VideoPlaybackController.this));
        }
    }

    private ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
