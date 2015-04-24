// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.util.Pair;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class val.pair
    implements EventListener
{

    final BaseVideoView this$0;
    final Pair val$pair;

    public void processEvent(Event event)
    {
        Video video = (Video)event.properties.get("nextVideo");
        if (video != null)
        {
            BaseVideoView.access$1200(BaseVideoView.this, video, val$pair);
        }
    }

    ()
    {
        this$0 = final_basevideoview;
        val$pair = Pair.this;
        super();
    }
}
