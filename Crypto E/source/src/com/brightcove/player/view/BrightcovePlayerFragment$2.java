// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.os.Bundle;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BrightcovePlayerFragment

class val.bundle
    implements EventListener
{

    final BrightcovePlayerFragment this$0;
    final Bundle val$bundle;

    public void processEvent(Event event)
    {
        BrightcovePlayerFragment.access$101(BrightcovePlayerFragment.this, val$bundle);
    }

    ()
    {
        this$0 = final_brightcoveplayerfragment;
        val$bundle = Bundle.this;
        super();
    }
}
