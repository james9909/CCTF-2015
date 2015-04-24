// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView

class this._cls0
    implements EventListener
{

    final BrightcoveClosedCaptioningView this$0;

    public void processEvent(Event event)
    {
        if (((Boolean)event.properties.get("boolean")).booleanValue())
        {
            setMode(osedCaptioningMode.ON);
            setVisibility(0);
            bringToFront();
            registerProgressListener();
            return;
        } else
        {
            setMode(osedCaptioningMode.OFF);
            setVisibility(8);
            cancelProgressListener();
            return;
        }
    }

    osedCaptioningMode()
    {
        this$0 = BrightcoveClosedCaptioningView.this;
        super();
    }
}
