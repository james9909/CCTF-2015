// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView

class this._cls0
    implements EventListener
{

    final BrightcoveClosedCaptioningView this$0;

    public void processEvent(Event event)
    {
        Integer integer = Integer.valueOf(event.getIntegerProperty("playheadPosition"));
        doUpdateCaption(integer);
    }

    A()
    {
        this$0 = BrightcoveClosedCaptioningView.this;
        super();
    }
}
