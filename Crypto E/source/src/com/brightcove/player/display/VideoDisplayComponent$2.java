// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class val.source
    implements EventListener
{

    final VideoDisplayComponent this$0;
    final Source val$source;
    final Video val$video;

    public void processEvent(Event event)
    {
        VideoDisplayComponent.access$1500(VideoDisplayComponent.this, val$video, val$source);
    }

    ()
    {
        this$0 = final_videodisplaycomponent;
        val$video = video1;
        val$source = Source.this;
        super();
    }
}
