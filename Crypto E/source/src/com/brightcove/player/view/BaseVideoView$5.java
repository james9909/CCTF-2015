// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class this._cls0
    implements EventListener
{

    final BaseVideoView this$0;

    public void processEvent(Event event)
    {
        if (BaseVideoView.access$600(BaseVideoView.this) != null)
        {
            BaseVideoView.access$600(BaseVideoView.this).onCompletion(null);
        }
        playheadPosition = 0;
        BaseVideoView.access$700(BaseVideoView.this, false);
    }

    ner()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
