// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class val.video
    implements EventListener
{

    final BaseVideoView this$0;
    final Video val$video;

    public void processEvent(Event event)
    {
        Source source = (Source)event.properties.get("source");
        BaseVideoView.access$1100(BaseVideoView.this).put(val$video, source);
        EventUtil.emit(eventEmitter, "didSelectSource", val$video, source);
        EventUtil.emit(eventEmitter, "prebufferNextVideo", val$video, source);
    }

    ()
    {
        this$0 = final_basevideoview;
        val$video = Video.this;
        super();
    }
}
