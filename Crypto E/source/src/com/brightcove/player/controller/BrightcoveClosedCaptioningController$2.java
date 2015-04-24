// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            BrightcoveClosedCaptioningController

class this._cls0
    implements EventListener
{

    final BrightcoveClosedCaptioningController this$0;

    public void processEvent(Event event)
    {
        Boolean boolean1 = (Boolean)event.properties.get("boolean");
        setVideoHasCaptions(boolean1);
    }

    ()
    {
        this$0 = BrightcoveClosedCaptioningController.this;
        super();
    }
}
