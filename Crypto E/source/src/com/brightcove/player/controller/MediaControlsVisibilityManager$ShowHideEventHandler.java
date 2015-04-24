// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            MediaControlsVisibilityManager

class <init>
    implements EventListener
{

    final MediaControlsVisibilityManager this$0;

    public void processEvent(Event event)
    {
        Object obj = event.properties.get("seekControlsVisibility");
        if (obj != null && (obj instanceof Map))
        {
            Map map = (Map)obj;
            MediaControlsVisibilityManager.access$300(MediaControlsVisibilityManager.this).clear();
            MediaControlsVisibilityManager.access$300(MediaControlsVisibilityManager.this).putAll(map);
            setVisibilityState();
        }
    }

    private ()
    {
        this$0 = MediaControlsVisibilityManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
