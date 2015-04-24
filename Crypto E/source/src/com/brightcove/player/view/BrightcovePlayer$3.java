// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.os.Bundle;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BrightcovePlayer

class val.bundle
    implements EventListener
{

    final BrightcovePlayer this$0;
    final Bundle val$bundle;

    public void processEvent(Event event)
    {
        BrightcovePlayer.access$301(BrightcovePlayer.this, val$bundle);
    }

    ()
    {
        this$0 = final_brightcoveplayer;
        val$bundle = Bundle.this;
        super();
    }
}
