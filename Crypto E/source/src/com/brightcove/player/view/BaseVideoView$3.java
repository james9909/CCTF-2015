// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class this._cls0
    implements EventListener
{

    final BaseVideoView this$0;

    public void processEvent(Event event)
    {
        onPrepared();
        attachMediaController();
        Video video = (Video)event.properties.get("video");
        if (video != null && !video.equals(BaseVideoView.access$100(BaseVideoView.this)) && BaseVideoView.access$200(BaseVideoView.this).indexOf(video) >= 0)
        {
            int _tmp = BaseVideoView.access$308(BaseVideoView.this);
        }
        BaseVideoView.access$402(BaseVideoView.this, true);
        if (BaseVideoView.access$500(BaseVideoView.this))
        {
            BaseVideoView.access$502(BaseVideoView.this, false);
            eventEmitter.emit("play");
        }
    }

    ()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
