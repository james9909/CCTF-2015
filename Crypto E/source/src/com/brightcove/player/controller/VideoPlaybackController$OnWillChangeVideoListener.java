// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        VideoPlaybackController.access$100(VideoPlaybackController.this).clear();
        VideoPlaybackController.access$002(VideoPlaybackController.this, 0);
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
