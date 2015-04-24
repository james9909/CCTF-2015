// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.os.Bundle;
import android.util.Log;
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
        Log.v(MediaControlsVisibilityManager.access$400(), "Handling an ACTIVITY_CREATED event to (possibly) restore the media controls visibility state...");
        Object obj = event.properties.get("instanceState");
        Bundle bundle;
        Bundle bundle1;
        if (obj != null && (obj instanceof Bundle))
        {
            bundle = (Bundle)obj;
        } else
        {
            bundle = null;
        }
        if (bundle != null)
        {
            bundle1 = bundle.getBundle("mediaControlsVisibilityState");
        } else
        {
            bundle1 = null;
        }
        if (bundle1 != null)
        {
            MediaControlsVisibilityManager.access$600(MediaControlsVisibilityManager.this, bundle1);
            return;
        } else
        {
            Log.v(MediaControlsVisibilityManager.access$400(), "No saved visibility state bundle found.  Restoration aborted.");
            return;
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
