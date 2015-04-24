// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class this._cls0
    implements EventListener
{

    final BaseVideoView this$0;

    public void processEvent(Event event)
    {
        if (event.properties.containsKey("ttmlDocument") || event.properties.containsKey("webvttDocument"))
        {
            addView(BaseVideoView.access$1000(BaseVideoView.this));
        } else
        if (BaseVideoView.access$1000(BaseVideoView.this) != null)
        {
            removeView(BaseVideoView.access$1000(BaseVideoView.this));
            return;
        }
    }

    ()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
