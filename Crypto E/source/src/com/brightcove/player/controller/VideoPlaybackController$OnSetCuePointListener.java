// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
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
        Object obj = event.properties.get("cue_point");
        if (obj != null && (obj instanceof CuePoint))
        {
            CuePoint cuepoint = (CuePoint)obj;
            VideoPlaybackController.access$100(VideoPlaybackController.this).add(cuepoint);
            return;
        } else
        {
            Log.e(VideoPlaybackController.TAG, "could not find CuePoint in given Event");
            return;
        }
    }

    protected ()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
