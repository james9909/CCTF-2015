// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

class val.playEvent
    implements EventListener
{

    final val.playEvent this$1;
    final UUID val$cuePointUniqueKey;
    final Event val$playEvent;

    public void processEvent(Event event)
    {
        if (val$cuePointUniqueKey.equals(event.properties.get("uuid")))
        {
            VideoPlaybackController.access$200(_fld0).emit(val$playEvent.getType(), val$playEvent.properties);
        }
    }

    ()
    {
        this$1 = final_;
        val$cuePointUniqueKey = uuid;
        val$playEvent = Event.this;
        super();
    }
}
