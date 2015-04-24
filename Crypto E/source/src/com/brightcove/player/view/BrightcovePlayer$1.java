// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BrightcovePlayer, BaseVideoView

class this._cls0
    implements EventListener
{

    final BrightcovePlayer this$0;

    public void processEvent(Event event)
    {
        if (BrightcovePlayer.access$000(BrightcovePlayer.this) > 0)
        {
            brightcoveVideoView.seekTo(BrightcovePlayer.access$000(BrightcovePlayer.this));
            BrightcovePlayer.access$002(BrightcovePlayer.this, -1);
        }
        if (BrightcovePlayer.access$100(BrightcovePlayer.this))
        {
            brightcoveVideoView.start();
            BrightcovePlayer.access$102(BrightcovePlayer.this, false);
        }
    }

    ()
    {
        this$0 = BrightcovePlayer.this;
        super();
    }
}
