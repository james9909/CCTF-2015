// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class val.position
    implements EventListener
{

    final val.position this$1;
    final int val$position;

    public void processEvent(Event event)
    {
        VideoDisplayComponent.access$1700(_fld0, val$position);
    }

    ()
    {
        this$1 = final_;
        val$position = I.this;
        super();
    }
}
