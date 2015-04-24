// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.captioning.LoadCaptionsService;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            BrightcoveClosedCaptioningController

class this._cls0
    implements EventListener
{

    final BrightcoveClosedCaptioningController this$0;

    public void processEvent(Event event)
    {
label0:
        {
            Video video = (Video)event.properties.get("video");
            java.net.URI uri = checkIfCaptionsExist(video);
            if (uri != null)
            {
                (new LoadCaptionsService(BrightcoveClosedCaptioningController.access$100(BrightcoveClosedCaptioningController.this))).loadCaptions(uri);
                if (android.os.ce.loadCaptions < 19)
                {
                    break label0;
                }
                BrightcoveClosedCaptioningController.access$200(BrightcoveClosedCaptioningController.this);
            }
            return;
        }
        BrightcoveClosedCaptioningController.access$300(BrightcoveClosedCaptioningController.this);
    }

    ()
    {
        this$0 = BrightcoveClosedCaptioningController.this;
        super();
    }
}
