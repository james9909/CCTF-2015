// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
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

    public Video currentVideo;
    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoPlaybackController.TAG, "OnSourceSelectedListener");
        Source source = (Source)event.properties.get("source");
        VideoPlaybackController.access$700(VideoPlaybackController.this).put(source, currentVideo);
        EventUtil.emit(VideoPlaybackController.access$800(VideoPlaybackController.this), "didSelectSource", currentVideo, source);
        if (VideoPlaybackController.access$900(VideoPlaybackController.this))
        {
            EventUtil.emit(VideoPlaybackController.access$1000(VideoPlaybackController.this), "setSource", currentVideo, source);
            return;
        } else
        {
            VideoPlaybackController.access$1100(VideoPlaybackController.this).add(source);
            return;
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
