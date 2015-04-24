// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        Object obj = event.properties.get("cue_points");
        if (obj != null && (obj instanceof List))
        {
            List list = (List)obj;
            VideoPlaybackController.access$100(VideoPlaybackController.this).clear();
            VideoPlaybackController.access$100(VideoPlaybackController.this).addAll(list);
            return;
        } else
        {
            Log.e(VideoPlaybackController.TAG, "could not find List of CuePoints in given Event");
            return;
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
