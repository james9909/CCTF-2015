// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class val.index
    implements EventListener
{

    final BaseVideoView this$0;
    final int val$index;
    final UUID val$uniqueKey;

    public void processEvent(Event event)
    {
label0:
        {
            if (event.properties.get("uuid").equals(val$uniqueKey))
            {
                resetMetaData();
                BaseVideoView.access$302(BaseVideoView.this, val$index);
                Video video = (Video)event.properties.get("nextVideo");
                if (video == null)
                {
                    break label0;
                }
                EventUtil.emit(eventEmitter, "setVideo", video);
            }
            return;
        }
        eventEmitter.emit("setSource");
    }

    ()
    {
        this$0 = final_basevideoview;
        val$uniqueKey = uuid;
        val$index = I.this;
        super();
    }
}
